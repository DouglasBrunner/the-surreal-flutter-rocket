use std::ffi::c_char;

#[no_mangle]
pub extern "C" fn hello() -> *const c_char {
    c"Hello from Rust!".as_ptr()
}
