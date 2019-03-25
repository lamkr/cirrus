//import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cirrus/Objeto.dart';
import 'package:shared_preferences/shared_preferences.dart';

final String nome_default = 'Luciano';

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
			await obj.salvar(nome_default);
			String nome = await obj.ler();
      expect(obj.nome, equals(nome_default));
    });
	});
}

