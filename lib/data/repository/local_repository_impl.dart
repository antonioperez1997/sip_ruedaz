import 'package:sip_ruedaz/domain/repository/local_storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _pref_dark_theme = "THEME_DARK";

class LocalRepositoryImpl extends LocalRepositoryInterface {
  @override
  Future<bool> isDarkMode() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(_pref_dark_theme);
  }

  @override
  Future<void> saveDarkMode(bool darkTheme) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_pref_dark_theme, darkTheme);
  }
}
