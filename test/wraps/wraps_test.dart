import 'package:app/presentation/widgets_screen/wrap/wrap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Update with the correct import path

void main() {
  testWidgets('Testing the wraps screen app bar', (WidgetTester tester) async {
    // Build the Wraps widget
    await tester.pumpWidget(
      MaterialApp(
        home: Wraps(),
      ),
    );

    // Verify that the AppBar is present
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('Wraps'), findsOneWidget);
  });
  testWidgets('Testing the chips text', (WidgetTester tester) async {
    // Build the Wraps widget
    await tester.pumpWidget(
      MaterialApp(
        home: Wraps(),
      ),
    );

    // Verify that each Wrap contains 5 Chips
    for (int i = 0; i < 5; i++) {
      expect(find.text('Item $i'), findsWidgets);
    }
  });
  testWidgets('Testing the amount of chips', (WidgetTester tester) async {
    // Build the Wraps widget
    await tester.pumpWidget(
      MaterialApp(
        home: Wraps(),
      ),
    );

    // Verify that there are 10 Chips in total
    expect(find.byType(Chip), findsNWidgets(10));
  });
}
