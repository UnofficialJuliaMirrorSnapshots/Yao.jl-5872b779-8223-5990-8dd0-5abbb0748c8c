```@meta
CurrentModule = Yao
```

# Yao

*A General Purpose Quantum Computation Simulation Framework*

Welcome to [Yao](https://github.com/QuantumBFS/Yao.jl), a **Flexible**, **Extensible**, **Efficient** Framework for
Quantum Algorithm Design. **Yao** (幺) is the Chinese character for normalized but not orthogonal.

We aim to provide a powerful tool for researchers, students to study and explore quantum computing in near term
future, before quantum computer being used in large-scale.

## Installation

Yao is a [Julia language package](https://julialang.org/), to install Yao, [you need to install Julia first](https://julialang.org/downloads/).

After you have Julia installed, simply open [Julia's interactive session](https://docs.julialang.org/en/v1/manual/getting-started/) and type `]` and then type the following:

```julia
(v1.1) pkg> add Yao
```

If you have problem with installation, please [file us an issue](https://github.com/QuantumBFS/Yao.jl/issues/new)!

## Getting Started

```@contents
Pages = [
    "examples/GHZ.md",
    "examples/QFT.md",
    "examples/Grover.md",
    "examples/QCBM.md",
]
Depth = 1
```

## Manual

```@contents
Pages = [
    "man/array_registers.md",
    "man/blocks.md",
    "man/base.md",
    "man/registers.md",
    "man/extending_blocks.md",
]
Depth = 1
```
