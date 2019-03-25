import 'package:shared_preferences/shared_preferences.dart';

class Objeto
{
	String get nome => 'Objeto';
	
	Future salvar(String nome) async {
		SharedPreferences prefs = await SharedPreferences.getInstance();
		await prefs.setString('nome', nome);
	}

	Future<String> ler() async {
		SharedPreferences prefs = await SharedPreferences.getInstance();
		return await prefs.getString('nome');
	}
}