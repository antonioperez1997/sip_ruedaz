import 'dart:convert';

Terminal terminalFromJson(String str) => Terminal.fromJson(json.decode(str));

String terminalToJson(Terminal data) => json.encode(data.toJson());

class Terminal {
  Terminal({
    this.nombreEmpresa,
    this.nitEmpresa,
    this.codTerminal = 'x',
    this.codPark = 'x',
    this.nameParking,
    this.address,
    this.schedule,
    this.resolucion,
    this.poliza,
    this.minutoCarro,
    this.minutoMoto,
    this.minutoBici,
    this.tiempoGracia,
    this.tipoTarifa,
  });

  final String nombreEmpresa;
  final String nitEmpresa;
  final String codTerminal;
  final String codPark;
  final String nameParking;
  final String address;
  final String schedule;
  final String resolucion;
  final String poliza;
  final int minutoCarro;
  final int minutoMoto;
  final int minutoBici;
  final int tiempoGracia;
  final int tipoTarifa;

  factory Terminal.fromJson(Map<String, dynamic> json) => Terminal(
        nombreEmpresa: json["nombreEmpresa"],
        nitEmpresa: json["nitEmpresa"],
        codTerminal: json["codTerminal"] ?? '',
        codPark: json["codPark"] ?? '',
        nameParking: json["nombrePark"] ?? '',
        address: json["direccion"],
        schedule: json["horario"],
        resolucion: json["resolucion"],
        poliza: json["poliza"],
        minutoCarro: json["tarifaCarro"],
        minutoMoto: json["tarifaMoto"],
        minutoBici: json["tarifaBici"],
        tiempoGracia: json["tiempoGracia"],
        tipoTarifa: json["tipoTarifa"],
      );

  Map<String, dynamic> toJson() => {
        "nombreEmpresa": nombreEmpresa,
        "nitEmpresa": nitEmpresa,
        "codTerminal": codTerminal,
        "codPark": codPark,
        "nombrePark": nameParking,
        "direccion": address,
        "horario": schedule,
        "resolucion": resolucion,
        "poliza": poliza,
        "tarifaCarro": minutoCarro,
        "tarifaMoto": minutoMoto,
        "tarifaBici": minutoBici,
        "tiempoGracia": tiempoGracia,
        "tipotarifa": tipoTarifa,
      };
}
