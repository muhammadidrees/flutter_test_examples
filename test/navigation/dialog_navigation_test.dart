import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_examples/navigation/navigation.dart';

import '../test_helpers.dart';

void main() {
  group("Dialog Navigation Widget", () {
    testWidgets("can render", (tester) async {
      await TestHelpers.forTester(tester).pumpWidget(
        const ShowDialogButton(),
      );

      expect(find.byType(ShowDialogButton), findsOneWidget);
    });
  });
}
