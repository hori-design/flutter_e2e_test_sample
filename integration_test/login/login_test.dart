import 'package:flutter/material.dart';
import 'package:flutter_e2e_test_sample/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('login', (tester) async {
    app.main();
    await tester.pumpAndSettle();

    await tester.enterText(
      find.byKey(const Key('idTextFormField')),
      'first-user',
    );
    await tester.enterText(
      find.byKey(const Key('passwordTextFormField')),
      'sample-password',
    );
    await tester.tap(
      find.byKey(const Key('loginButton')),
    );

    await tester.pumpAndSettle();

    expect(
      find.text('ホーム画面です'),
      findsOneWidget,
    );
  });
}
