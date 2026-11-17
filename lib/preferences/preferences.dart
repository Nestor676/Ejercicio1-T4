import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _nom = '';
  static bool _isDarkMode = false;
  static int _genere = 1;

  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }

  static String get nom{
    return _prefs.getString('nom') ?? _nom;
  }

  static set nom(String nom){
    _nom = nom;
    _prefs.setString('nom', nom);
  }

  static bool get isDarkMode{
    return _prefs.getBool('darkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool isDarkMode){
    _isDarkMode = isDarkMode;
    _prefs.setBool('darkMode', isDarkMode);
  }

  static int get genere{
    return _prefs.getInt('genere') ?? _genere;
  }

  static set genere(int genere){
    _genere = genere;
    _prefs.setInt('genere', _genere);
  }
}