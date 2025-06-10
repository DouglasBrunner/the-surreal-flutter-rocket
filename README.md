# Surreal Flutter Rocket

This monorepo hosts a full-stack application built with SurrealDB, a Rust backend using Rocket, and a Flutter frontend.  The goal is to provide a single repository where OpenAPI stubs, Cucumber specifications, and technical documentation evolve together.

- **backend/** – Rust workspace for API services and integrations
- **frontend/** – Flutter application targeting mobile and desktop
- **specs/** – Behaviour driven tests and API definitions
- **docs/** – Architecture notes and additional guides

All code is released under a dual MIT/Apache-2.0 license.

## Building the Rust FFI library

To build the Rust code that is consumed by the Flutter app run:

```bash
cargo build --release -p hello
```

This will create a shared library (`libhello.so` on Linux, `libhello.dylib` on macOS, or `hello.dll` on Windows) in `target/release/` which must be available when running the Flutter application.
