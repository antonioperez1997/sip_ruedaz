import 'package:get/instance_manager.dart';
import 'package:sip_ruedaz/data/repository/auth_repository_impl.dart';
import 'package:sip_ruedaz/data/repository/local_repository_impl.dart';
import 'package:sip_ruedaz/domain/repository/auth_repository.dart';
import 'package:sip_ruedaz/domain/repository/local_storage_repository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
    Get.lazyPut<AuthRepositoryInterface>(() => AuthRepositoryImpl());
  }
}
