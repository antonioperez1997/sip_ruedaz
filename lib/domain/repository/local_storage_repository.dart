import 'dart:ffi';

abstract class LocalRepositoryInterface {
  Future<bool> isDarkMode();
  Future<void> saveDarkMode(bool darkTheme);
}
