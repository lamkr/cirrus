import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'package:cirrus/Objeto.dart';
import 'package:shared_preferences/shared_preferences.dart';

final String nome_default = 'Luciano';

void main() 
{
  group('Teste de integração no Cirrus CI', () 
	{
		FlutterDriver driver;
	
		// Connect to the Flutter driver before running any tests
    setUpAll(() async {
      print('setUpAll');
      driver = await FlutterDriver.connect();
    });

		// Close the connection to the driver after the tests have completed
    tearDownAll(() async {
      print('tearDownAll');
      if (driver != null) {
        driver.close();
      }
    });

    test('Testa SharePreferences', () async {
			Objeto obj = new Objeto();
			await obj.salvar(nome_default);
			String nome = await obj.ler();
      expect(obj.nome, equals(nome_default));
    });
	});
}
