import 'package:app/presentation/state_management/state_managers/set_state/set_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Testing Set State feature',
    (widgetTester) async {
      await widgetTester.pumpWidget(Scaffold(body: SetState(title: 'Testing')));
      // ver
      final counter = find.text('0');

      expect(counter, findsOneWidget);
    },
  );
}
