import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';

Future<void> pumpScreenNavigationButtonWidget(WidgetTester tester) async =>
    tester.pumpWidget(
      const Scaffold(
        body: ScreenNavigationButton(),
      ),
    );

void main() {
  group("Screen Navigation", () {
    testWidgets("can render", (tester) async {
      await pumpScreenNavigationButtonWidget(tester);

      expect(find.byType(ScreenNavigationButton), findsOneWidget);
    });
  });
}
