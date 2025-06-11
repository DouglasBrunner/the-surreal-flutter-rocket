import 'package:flutter/material.dart';
import 'rust_ffi.dart';

void main() {
  final rust = RustBindings();
  final greeting = rust.hello();
  runApp(MyApp(greeting: greeting));
}

class MyApp extends StatelessWidget {
  final String greeting;
  const MyApp({super.key, required this.greeting});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text(greeting)),
      ),
    );
  }
}
