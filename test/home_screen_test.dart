import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/home_screen.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';

import 'test_helpers.dart';

void main() {
  group("HomeScreen", () {
    testWidgets("can render", (tester) async {
      await TestHelpers.forTester(tester).pumpScreen(
        const HomeScreen(),
      );
      expect(find.byType(HomeScreen), findsOneWidget);
    });

    test("has route", () {
      expect(HomeScreen.route(), isA<MaterialPageRoute>());
    });

    testWidgets("contains navigate to page button", (tester) async {
      await TestHelpers.forTester(tester).pumpScreen(
        const HomeScreen(),
      );
      expect(find.byType(ScreenNavigationButton), findsOneWidget);
    });

    testWidgets("contains show dialog button", (tester) async {
      await TestHelpers.forTester(tester).pumpScreen(
        const HomeScreen(),
      );
      expect(find.byType(ShowDialogButton), findsOneWidget);
    });
  });
}
