import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';
import 'package:mockingjay/mockingjay.dart';

import '../test_helpers.dart';

void main() {
  group("Dialog Navigation Widget", () {
    testWidgets("can render", (tester) async {
      await TestHelpers.of(tester).pumpWidget(
        const ShowDialogButton(),
      );

      expect(find.byType(ShowDialogButton), findsOneWidget);
    });

    testWidgets("shows dialog on tap", (tester) async {
      final navigator = MockNavigator();
      when(() => navigator.push(any())).thenAnswer((_) async {});

      await tester.pumpWidget(
        MaterialApp(
          home: MockNavigatorProvider(
            navigator: navigator,
            child: const Scaffold(
              body: ShowDialogButton(),
            ),
          ),
        ),
      );

      Finder showDialogButton = find.byKey(const Key("show-dialog-button"));

      expect(showDialogButton, findsOneWidget);

      await tester.tap(showDialogButton);

      //TODO: verify navigation to alert dialog
    });
  });
}
