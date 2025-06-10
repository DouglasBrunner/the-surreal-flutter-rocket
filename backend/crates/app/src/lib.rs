use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn hello() -> *const c_char {
    b"Hello from Rust!\0".as_ptr() as *const c_char
}
