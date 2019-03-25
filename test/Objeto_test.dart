import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:cirrus/Objeto.dart';

void main() {
  group('Teste de integração no Cirrus CI', () {
    const MethodChannel channel = MethodChannel(
      'plugins.flutter.io/shared_preferences',
    );

    setUp(() async {
      print('setUp');
    });

    tearDown(() {
      print('tearDown');
    });

    test('reading', () async {
			Objeto obj = new Objeto();
      expect(obj.nome, equals('Objeto'));
    });
	});
}
