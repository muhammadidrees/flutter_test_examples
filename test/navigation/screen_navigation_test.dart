import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';

Future<void> pumpScreenNavigationButtonWidget(WidgetTester tester) async =>
    tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ScreenNavigationButton(),
        ),
      ),
    );

void main() {
  group("Screen Navigation", () {
    testWidgets("can render", (tester) async {
      await pumpScreenNavigationButtonWidget(tester);

      expect(find.byType(ScreenNavigationButton), findsOneWidget);
    });
  });

  group("Page2", () {
    test("has route", () {
      expect(Page2.route(), isA<MaterialPageRoute>());
    });

    testWidgets("can render", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Page2(),
        ),
      );
      expect(find.byType(Page2), findsOneWidget);
    });
  });
}
