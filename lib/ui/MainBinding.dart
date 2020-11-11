import 'package:get/instance_manager.dart';
import 'package:sip_ruedaz/data/repository/AuthRepositoryImpl.dart';
import 'package:sip_ruedaz/data/repository/LocalReposirotyImpl.dart';
import 'package:sip_ruedaz/domain/repository/AuthRepository.dart';
import 'package:sip_ruedaz/domain/repository/LocalStorageRepository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
    Get.lazyPut<AuthRepositoryInterface>(() => AuthRepositoryImpl());
  }
}
