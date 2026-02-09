# Security Policy

## Versioning

This project follows [Semantic Versioning](https://semver.org/) (SemVer):

- **MAJOR.MINOR.PATCH** (e.g., 1.2.3)
- **MAJOR**: Incompatible API changes
- **MINOR**: Backwards-compatible new features
- **PATCH**: Backwards-compatible bug fixes

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.x.x   | :white_check_mark: |
| < 1.0   | :x:                |

Only the latest minor version of each major release receives security updates.

## Reporting a Vulnerability

We take security vulnerabilities seriously. If you discover a security issue, please report it responsibly.

### How to Report

1. **Do not** open a public GitHub issue for security vulnerabilities
2. Send a private report via [GitHub Security Advisories](https://github.com/s-celles/sample-julia/security/advisories/new)
3. Or contact the maintainer directly

### What to Include

- Description of the vulnerability
- Steps to reproduce the issue
- Potential impact
- Suggested fix (if any)

### Response Timeline

- **Acknowledgment**: Within 48 hours
- **Initial assessment**: Within 7 days
- **Resolution target**: Depends on severity

### What to Expect

- We will acknowledge receipt of your report
- We will investigate and keep you informed of progress
- We will credit you in the fix (unless you prefer to remain anonymous)

## Security Best Practices

When contributing to this project:

- Avoid using `eval()` or `Meta.parse()` on untrusted input
- Avoid `unsafe_` functions (`unsafe_load`, `unsafe_store!`, `unsafe_wrap`, etc.) unless absolutely necessary
- Validate all input data, especially in `ccall` and external library interfaces
- Be cautious with `@eval` and generated functions that process external data
- Use `Base.invokelatest` carefully and avoid calling it with untrusted function references
- Avoid deserialization of untrusted data with `Serialization.deserialize`

## Disclosure Policy

We follow responsible disclosure practices. Please allow us reasonable time to address vulnerabilities before any public disclosure.

Thank you for helping keep this project secure!
