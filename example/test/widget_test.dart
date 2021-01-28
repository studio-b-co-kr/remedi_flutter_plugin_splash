// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:example/feature/splash/splash_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remedi_flutter_base/splash/splash.dart';

import '../lib/example_app.dart';
import 'app_routes.dart';
import 'app_theme.dart';

void main() {
  testWidgets('Example App Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ExampleApp(
      generateRoutes: generateRoute,
      generateInitialRoutes: MaterialPageRoute(
        builder: (context) => SplashPage(
          viewModel: SplashViewModel(repository: SplashRepository()),
        ),
      ),
      initialRoute: SplashPage.ROUTE_NAME,
      theme: appTheme,
    ));

    // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
