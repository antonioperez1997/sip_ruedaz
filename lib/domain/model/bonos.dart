import 'package:sip_ruedaz/domain/model/bonus.dart';

class Bonos {
  List<Bono> items = new List();
  Bonos();

  Bonos.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final bonos = new Bono.fromJson(item);
      items.add(bonos);
    }
  }
}
