import 'package:flutter/material.dart'; // You were missing this import for runApp and other widgets
import 'src/gen/rust/frb_generated.dart';
import 'src/gen/rust/api.dart' as rust_api;

Future<void> main() async {
  // It's good practice to ensure widgets are initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder<String>(
        future: _initAndHello(),
        builder: (c, snap) => MaterialApp(
          home: Scaffold(body: Center(child: Text(snap.data ?? '…'))),
        ),
      );

  // 👇 This function can be greatly simplified
  Future<String> _initAndHello() async {
    // The generated `init` function automatically finds and loads the
    // dynamic library on all platforms. No manual path handling is needed.
    await RustLib.init();
    return rust_api.hello();
  }
}