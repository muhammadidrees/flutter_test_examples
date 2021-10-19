import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class TestHelpers {
  final WidgetTester tester;

  TestHelpers(this.tester);

  factory TestHelpers.forTester(WidgetTester tester) => TestHelpers(tester);

  Future<void> pumpWidget(Widget widget) async => tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: widget,
          ),
        ),
      );

  Future<void> pumpScreen(Widget screen) async => tester.pumpWidget(
        MaterialApp(
          home: screen,
        ),
      );
}
