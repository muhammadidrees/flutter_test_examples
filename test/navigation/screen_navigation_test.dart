import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';
import 'package:mockingjay/mockingjay.dart';

import '../test_helpers.dart';

void main() {
  group("Screen Navigation Widget", () {
    testWidgets("can render", (tester) async {
      await TestHelpers.forTester(tester).pumpWidget(
        const ScreenNavigationButton(),
      );

      expect(find.byType(ScreenNavigationButton), findsOneWidget);
    });

    testWidgets("navigates to Page2 on tap", (tester) async {
      final navigator = MockNavigator();
      when(() => navigator.push(any())).thenAnswer((_) async {});

      await tester.pumpWidget(
        MaterialApp(
          home: MockNavigatorProvider(
            navigator: navigator,
            child: const Scaffold(
              body: ScreenNavigationButton(),
            ),
          ),
        ),
      );

      Finder navigationButton =
          find.byKey(const Key("navigate-to-page2-button"));

      expect(navigationButton, findsOneWidget);

      await tester.tap(navigationButton);
      await tester.pumpAndSettle();

      verify(
        () => navigator.push(any(that: isRoute<void>(named: '/page2'))),
      ).called(1);
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
