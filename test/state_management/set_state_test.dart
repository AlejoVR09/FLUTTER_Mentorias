import 'package:app/presentation/state_management/state_managers/set_state/set_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Testing Set State feature',
    (widgetTester) async {
      await widgetTester.pumpWidget(
        MaterialApp(
          home: SetState(title: 'Testing'),
        ),
      );
      // Find the initial value of the counter
      final counter = find.text('0');

      // Check if the initial value is 0
      expect(counter, findsOneWidget);

      // Tap the '+' button
      await widgetTester.tap(find.byIcon(Icons.add));
      await widgetTester.pump();

      // Verify the counter has incremented to 1
      final counterPlus = find.text('1');
      expect(counterPlus, findsOneWidget);
    },
  );
}
