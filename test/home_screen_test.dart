import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/home_screen.dart';

Future<void> pumpHomeScreenWidget(WidgetTester tester) async =>
    tester.pumpWidget(
      const MaterialApp(
        home: HomeScreen(),
      ),
    );

void main() {
  group("HomeScreen", () {
    testWidgets("renders home screen", (tester) async {
      await pumpHomeScreenWidget(tester);
      expect(find.byType(HomeScreen), findsOneWidget);
    });

    test("has route", () {
      expect(HomeScreen.route(), isA<MaterialPageRoute>());
    });
  });
}
