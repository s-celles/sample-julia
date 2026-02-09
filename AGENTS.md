# Code Preferences

## Git Commits
- GitHub handle: s-celles
- Name: Sébastien Celles
- Use conventional commit format (feat:, fix:, refactor:, docs:, test:, chore:, etc.)
- Do NOT add "Co-Authored-By: Claude" to commit messages

## .gitignore
- Use appropriate .gitignore templates from https://github.com/github/gitignore
- Always ignore build artifacts and generated files
- Ignore IDE-specific files (.vscode/, .idea/) - can be commented out if sharing settings is desired
- Ignore AI-generated folders (.claude/, .ai/, etc.) to keep repository clean
- Ignore `Manifest.toml` for packages (commit it for applications)

## LICENSE
- Choose an appropriate license using https://choosealicense.com/
- This project uses MIT License
- Always include the LICENSE file at the repository root
- Update copyright year and author name in the LICENSE file

## CONTRIBUTING.md
- Include a CONTRIBUTING.md file to guide contributors
- Describe how to set up the development environment
- Explain the pull request process and coding standards
- Reference the CODE_OF_CONDUCT.md if applicable
- See https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions

## SECURITY.md
- Include a SECURITY.md file to describe security policies
- Explain how to report vulnerabilities (responsible disclosure)
- List supported versions and security update policies
- GitHub provides a template via repository Security tab
- See https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository

## Semantic Versioning
- Follow [Semantic Versioning](https://semver.org/) (SemVer) for releases
- Format: **MAJOR.MINOR.PATCH** (e.g., 1.2.3)
- **MAJOR**: Incompatible API changes
- **MINOR**: Backwards-compatible new features
- **PATCH**: Backwards-compatible bug fixes
- Use git tags for version releases (e.g., `v1.0.0`)

## Test-Driven Development (TDD)
- Write tests before implementing features (Red-Green-Refactor cycle)
- **Red**: Write a failing test that defines expected behavior
- **Green**: Write minimal code to make the test pass
- **Refactor**: Improve code while keeping tests green
- Use Julia's built-in [Test](https://docs.julialang.org/en/v1/stdlib/Test/) standard library with `@testset` and `@test`
- Run tests with `julia --project=. -e 'using Pkg; Pkg.test()'` or `] test` in the Pkg REPL
- Keep tests fast, isolated, and deterministic
- See https://martinfowler.com/bliki/TestDrivenDevelopment.html

## Continuous Integration (CI)
- Use GitHub Actions for CI/CD pipelines
- Use [julia-actions/setup-julia](https://github.com/julia-actions/setup-julia) to install Julia in CI
- Run tests automatically on every push and pull request
- Build and test on multiple platforms/Julia versions when applicable
- Fail fast: stop pipeline on first failure
- Keep CI configuration in `.github/workflows/`
- See https://docs.github.com/en/actions

## Code Coverage
- Measure test coverage to identify untested code paths
- Use Julia's built-in `--code-coverage` flag or [Coverage.jl](https://github.com/JuliaCI/Coverage.jl)
- Integrate with coverage services like [Codecov](https://codecov.io/) or [Coveralls](https://coveralls.io/)
- Aim for meaningful coverage, not 100% for its own sake
- Focus on critical paths and edge cases
- Display coverage badge in README.md

## Code Quality
- Use [JuliaFormatter.jl](https://github.com/domluna/JuliaFormatter.jl) for consistent code formatting
- Use [JET.jl](https://github.com/aviatesk/JET.jl) for static analysis and type error detection
- Configure pre-commit hooks for automated checks
- Use [pre-commit](https://pre-commit.com/) framework for hook management
- Use [Aqua.jl](https://github.com/JuliaTesting/Aqua.jl) for package quality assurance

## Documentation
- Write clear README.md with project overview, installation, and usage
- Document public APIs with docstrings
- Use [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl) for generating documentation
- Keep documentation up-to-date with code changes
- Include examples and code snippets
- Generate API documentation automatically in CI

## Active Technologies
- **Language**: Julia (latest stable via juliaup)
- **Package manager**: Pkg (built-in)
- **Testing**: Test stdlib (`@testset`, `@test`)
- **Formatting**: JuliaFormatter.jl
- **Static analysis**: JET.jl
- **Documentation**: Documenter.jl
- **CI**: GitHub Actions with julia-actions/setup-julia
