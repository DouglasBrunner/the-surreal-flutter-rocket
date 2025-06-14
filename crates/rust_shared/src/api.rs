use flutter_rust_bridge::frb;

#[frb]                       // visible to the generator
pub fn hello() -> String {
    "Hello from Rust!".into()
}