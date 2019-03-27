// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_driver/driver_extension.dart';
import 'package:cirrus/main.dart' as app;

void main() {
	// This line enables the extension
	print('enableFlutterDriverExtension()');
  enableFlutterDriverExtension();

  // Call the `main()` function of your app or call `runApp` with any widget you
  // are interested in testing.
	print('app.main()');
  app.main();
	print('saindo do main()');
}
