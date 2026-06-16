# Computational Physics Simulations Library

A public collection of computational physics simulations, numerical experiments, and physical system solvers developed primarily in Julia.

This repository focuses on the simulation and numerical study of physical phenomena across different areas of physics, combining theoretical documentation, computational implementations, and scientific visualizations.

The project is organized by physical systems rather than numerical methods. Each simulation includes:

* theoretical background,
* mathematical formulation,
* numerical implementation,
* and visual outputs such as plots, animations, and field maps.

---

# Objectives

The main goals of this repository are:

* Build a structured library of reusable computational physics projects.
* Provide clear and documented implementations of physical models.
* Connect theory, numerical methods, and visualization in a single framework.
* Serve as an educational and research-oriented resource.
* Create modular simulations that can interact with external numerical methods repositories and future projects.

---

# Repository Structure

```text
computational-physics-simulations-library/
│
├── classical_physics/
├── electromagnetism/
├── quantum_physics/
├── statistical_physics/
├── interdisciplinary/
│
├── shared/
├── docs/
└── README.md
```

Each physical system follows a common internal structure:

```text
simulation_name/
│
├── docs/
│   ├── theory.tex
│   └── references.bib
│
├── src/
│   ├── main_solver.jl
│   ├── helper_functions.jl
│   └── numerical_methods.jl
│   └── visualization.jl
│
└── README.md
```

---

# Main Areas

## Classical Physics

Examples:

* Harmonic oscillators
* Chaotic pendulums
* Orbital dynamics
* Three-body problems
* Hamiltonian systems

## Electromagnetism

Examples:

* Electric fields
* Dipole and multipole systems
* Maxwell equation solvers
* Wave propagation
* Electromagnetic simulations

## Quantum Physics

Examples:

* Schrödinger equation solvers
* Quantum tunneling
* Wave packet evolution
* Harmonic oscillator
* Finite potential wells

## Statistical Physics

Examples:

* Random walks
* Ising model
* Monte Carlo simulations
* Diffusion systems
* Phase transitions

## Interdisciplinary

Examples:

* Plasma physics
* Fluid dynamics
* Nonlinear systems
* Complex systems
* Reaction-diffusion models

---

# Technical Notes

* Primary language: Julia
* Unit system: International System of Units (SI)
* Focus: physical phenomena and computational modeling
* Numerical methods are modular and reusable whenever possible

The repository may also include:

* finite difference methods,
* spectral methods,
* Runge-Kutta integrators,
* FFT-based solvers,
* sparse matrix methods,
* Monte Carlo techniques,
* and other computational tools.

---

# Documentation Philosophy

Every simulation aims to include:

1. Physical description of the system
2. Mathematical derivation
3. Numerical methodology
4. Source code implementation
5. Scientific visualization
6. Validation or comparison with known analytical results whenever possible

---

# Future Goals

* Interactive visualizations
* GPU acceleration
* Parallel computing implementations
* Benchmarking and performance analysis
* Automatic documentation generation
* Integration with external numerical methods repositories

---

# Disclaimer

This repository is a long-term personal and educational project focused on computational physics, numerical simulation, and scientific computing.

The implementations prioritize clarity, reproducibility, and physical interpretation.
