using Yao
using FFTW, Test
using LinearAlgebra: I

# Control-R(k) gate in block-A
A(i::Int, j::Int, k::Int) = control([i, ], j=>shift(2π/(1<<k)))
# block-B
B(n::Int, i::Int) = chain(i==j ? put(i=>H) : A(j, i, j-i+1) for j = i:n)
QFT(n::Int) = chain(n, B(n, i) for i = 1:n)

# define QFT and IQFT block.
num_bit = 5
qft = QFT(num_bit)
iqft = qft'

@test chain(num_bit, qft, iqft) |> mat ≈ I

# define a register and get its vector representation
reg = rand_state(num_bit)
rv = reg |> statevec |> copy

# test fft
reg_qft = copy(reg) |>invorder! |> qft
kv = ifft(rv)*sqrt(length(rv))
@test reg_qft |> statevec ≈ kv

# test ifft
reg_iqft = copy(reg) |>iqft
kv = fft(rv)/sqrt(length(rv))
@test reg_iqft |> statevec ≈ kv |> invorder
