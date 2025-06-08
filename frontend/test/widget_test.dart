// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:frontend/main.dart';

void main() {
  // Defines a new test case.
  testWidgets('Hello, world! smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // This is the equivalent of running the app.
    await tester.pumpWidget(const MyApp());

    // Verify that the 'Hello, world!' text is on the screen.
    // find.text() creates a "Finder" that searches the widget tree.
    expect(find.text('Hello, world!'), findsOneWidget);

    // You could also test for things that SHOULD NOT be there.
    // For example, this passes because there is no 'goodbye' text.
    expect(find.text('goodbye'), findsNothing);
  });
}
