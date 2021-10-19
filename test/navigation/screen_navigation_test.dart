import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';

import '../test_helpers.dart';

Future<void> pumpScreenNavigationButtonWidget(WidgetTester tester) async =>
    tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ScreenNavigationButton(),
        ),
      ),
    );

void main() {
  group("Screen Navigation Widget", () {
    testWidgets("can render", (tester) async {
      await TestHelpers.forTester(tester).pumpWidget(
        const ScreenNavigationButton(),
      );

      expect(find.byType(ScreenNavigationButton), findsOneWidget);
    });
  });

  group("Page2", () {
    test("has route", () {
      expect(Page2.route(), isA<MaterialPageRoute>());
    });

    testWidgets("can render", (tester) async {
      await TestHelpers.forTester(tester).pumpScreen(
        const Page2(),
      );
      expect(find.byType(Page2), findsOneWidget);
    });
  });
}
