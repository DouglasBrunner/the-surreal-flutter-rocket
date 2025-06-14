# Surreal Flutter Rocket

This monorepo hosts a full-stack application built with SurrealDB, a Rust backend using Rocket, and a Flutter frontend.  The goal is to provide a single repository where OpenAPI stubs, Cucumber specifications, and technical documentation evolve together.

- **backend/** – Rust workspace for API services and integrations
- **frontend/** – Flutter application targeting mobile and desktop
- **specs/** – Behaviour driven tests and API definitions
- **docs/** – Architecture notes and additional guides

All code is released under a dual MIT/Apache-2.0 license.

## Setup
export RUST_LIB_DIR="$(pwd)/crates/rust_shared/target/debug"

## Building 

From project root:
cargo build --release -p server 
cargo build --release -p shared
flutter_rust_bridge_codegen generate

From flutter_app:
flutter clean
flutter pub get
flutter analyse # optional

