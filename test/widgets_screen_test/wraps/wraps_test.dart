import 'package:app/presentation/widgets_screen/wrap/wrap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Update with the correct import path

void main() {
  group(
    'Testing Wraps: ',
    () {
      testWidgets('Testing the wraps screen app bar',
          (WidgetTester tester) async {
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
      testWidgets('Testing the wrap section title',
          (WidgetTester tester) async {
        // Build the Wraps widget
        await tester.pumpWidget(
          MaterialApp(
            home: Wraps(),
          ),
        );

        // Verify that there are 10 Chips in total
        expect(find.text('Direction'), findsOneWidget);
      });
      testWidgets('Testing the wrap section title',
          (WidgetTester tester) async {
        // Build the Wraps widget
        await tester.pumpWidget(
          MaterialApp(
            home: Wraps(),
          ),
        );

        // Verify the text generated with a helper method
        expect(find.text('Direction'), findsOneWidget);
        expect(find.text('Spacing'), findsOneWidget);
      });
      testWidgets('Testing the helper method title',
          (WidgetTester tester) async {
        // Build the Wraps widget
        await tester.pumpWidget(
          MaterialApp(
            home: Wraps().getWrapTitleSection('Title'),
          ),
        );

        // Verify the text use in the helper method
        expect(find.text('Title'), findsOneWidget);
      });
      testWidgets('''Testing the helper method title if it was private 
        or in a private widget class
      ''', (WidgetTester tester) async {
        
        // Define a helper method to generate a title
        Widget getWrapTitleSection(String title) {
          return Column(
            children: [
              SizedBox(height: 20),
              Text(title),
              SizedBox(height: 20),
            ],
          );
        }

        // Build the Wraps widget
        await tester.pumpWidget(
          MaterialApp(
            home: getWrapTitleSection('Title'),
          ),
        );

        // Verify the text use in the helper method
        expect(find.text('Title'), findsOneWidget);
      });
    },
  );
}
