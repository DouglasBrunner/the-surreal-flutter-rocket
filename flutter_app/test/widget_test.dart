import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Hello from Rust smoke test', (WidgetTester tester) async {
    // Build our app with the expected greeting and trigger a frame.
    await tester.pumpWidget(const MyApp(greeting: 'Hello from Rust!'));

    // Verify that the greeting from Rust is on the screen.
    expect(find.text('Hello from Rust!'), findsOneWidget);

    // Verify the default text is not present.
    expect(find.text('Hello, world!'), findsNothing);
  });
}