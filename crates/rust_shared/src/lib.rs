// crates/rust_shared/src/lib.rs

pub mod api;

// This now correctly points to the `gen` directory as a module.
#[allow(clippy::all)]
pub mod gen;
