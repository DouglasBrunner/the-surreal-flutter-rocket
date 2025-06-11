import 'dart:ffi' as ffi;
import 'dart:io';
import 'package:ffi/ffi.dart' as pkg_ffi;

typedef _HelloNative = ffi.Pointer<ffi.Int8> Function();
typedef _HelloDart = ffi.Pointer<ffi.Int8> Function();

class RustBindings {
  late final _HelloDart _hello;

  RustBindings() {
    final libraryPath = Platform.isWindows ? 'hello.dll' : 'libhello.so';
    final dylib = ffi.DynamicLibrary.open(libraryPath);
    _hello = dylib.lookupFunction<_HelloNative, _HelloDart>('hello');
  }

  String hello() {
    final ptr = _hello();
    return ptr.cast<pkg_ffi.Utf8>().toDartString();
  }
}