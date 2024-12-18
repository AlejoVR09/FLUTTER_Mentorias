import 'package:app/presentation/widgets_screen/slivers/slivers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Testing the slivers app bar', (WidgetTester tester) async {
    // Build the Slivers widget
    await tester.pumpWidget(
      MaterialApp(
        home: Slivers(),
      ),
    );

    // Verify the SliverAppBar is present
    expect(find.byType(SliverAppBar), findsOneWidget);

    // Verify the title "Slivers test" is displayed
    expect(find.text('Slivers test'), findsOneWidget);
  });
  testWidgets('Testing the sliver list items', (WidgetTester tester) async {
    // Build the Slivers widget
    await tester.pumpWidget(
      MaterialApp(
        home: Slivers(),
      ),
    );

    // Verify that the ListView is scrollable
    await tester.drag(find.byType(CustomScrollView),
        const Offset(0, -10000)); // Dragging upwards
    await tester.pumpAndSettle(); // Allow the scroll to finish

    // Verify that the last item is still present after scrolling
    expect(find.text('Item 99'), findsOneWidget);
  });
}
