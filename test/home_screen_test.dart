import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/home_screen.dart';

void main() {
  group("HomeScreen", () {
    testWidgets("renders home screen", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HomeScreen(),
        ),
      );

      expect(find.byType(HomeScreen), findsOneWidget);
    });

    test("has route", () {
      expect(HomeScreen.route(), isA<MaterialPageRoute>());
    });
  });
}
