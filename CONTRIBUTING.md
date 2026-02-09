# Contributing to sample-julia

Thank you for your interest in contributing to this project!

## Getting Started

### Prerequisites

- Julia (latest stable, installed via [juliaup](https://github.com/JuliaLang/juliaup))
- Git

### Setting Up the Development Environment

1. Fork the repository on GitHub
2. Clone your fork locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/sample-julia.git
   cd sample-julia
   ```
3. Add the upstream remote:
   ```bash
   git remote add upstream https://github.com/s-celles/sample-julia.git
   ```

### Installing Dependencies

```bash
julia --project=. -e 'using Pkg; Pkg.instantiate()'
```

### Running the Project

```bash
julia --project=. src/SampleJulia.jl
```

### Running Tests

```bash
julia --project=. -e 'using Pkg; Pkg.test()'
```

Or from the Julia REPL:

```julia
julia> ]
pkg> activate .
pkg> test
```

## How to Contribute

### Reporting Bugs

- Check if the issue already exists in [GitHub Issues](https://github.com/s-celles/sample-julia/issues)
- If not, create a new issue with a clear description and steps to reproduce

### Suggesting Features

- Open a new issue describing the feature and its use case
- Discuss the implementation approach before starting work

### Submitting Changes

1. Create a new branch from `main`:
   ```bash
   git checkout -b feat/your-feature-name
   ```
2. Make your changes following the coding standards below
3. Commit using [Conventional Commits](https://www.conventionalcommits.org/):
   - `feat:` for new features
   - `fix:` for bug fixes
   - `docs:` for documentation changes
   - `refactor:` for code refactoring
   - `test:` for adding tests
   - `chore:` for maintenance tasks
4. Push to your fork and open a Pull Request

### Coding Standards

- Use [JuliaFormatter.jl](https://github.com/domluna/JuliaFormatter.jl) for consistent formatting
- Use meaningful variable and function names
- Add docstrings for public functions
- Ensure all tests pass before submitting

## Versioning

This project follows [Semantic Versioning](https://semver.org/) (SemVer):

- **MAJOR** version for incompatible API changes
- **MINOR** version for backwards-compatible new features
- **PATCH** version for backwards-compatible bug fixes

## Code of Conduct

Please be respectful and constructive in all interactions. We aim to maintain a welcoming environment for all contributors.

## Questions?

Feel free to open an issue for any questions about contributing.
