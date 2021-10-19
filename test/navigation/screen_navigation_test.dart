import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';

void main() {
  group("Screen Navigation", () {
    testWidgets("can render", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: ScreenNavigationButton(),
        ),
      ));
    });
  });
}
