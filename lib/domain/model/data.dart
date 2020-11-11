import 'package:sip_ruedaz/domain/model/bonus.dart';

class Data {
  Data({
    this.nombreCliente,
    this.bonos,
  });

  String nombreCliente;
  List<Bono> bonos;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        nombreCliente: json["nombreCliente"],
        bonos: List<Bono>.from(json["Bonos"].map((x) => Bono.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nombreCliente": nombreCliente,
        "Bonos": List<dynamic>.from(bonos.map((x) => x.toJson())),
      };
}
