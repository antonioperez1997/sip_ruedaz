import 'dart:convert';

Vehicle vehicleFromJson(String str) => Vehicle.fromJson(json.decode(str));

String vehicleToJson(Vehicle data) => json.encode(data.toJson());

class Vehicle {
  Vehicle({
    this.barcode,
    this.codPark,
    this.codTerminal,
    this.estado,
    this.fechaHora,
    this.placa,
    this.tipoVehiculo,
  });

  String barcode = '01CE107N';
  String codPark = '11';
  String codTerminal = 'K26';
  String estado = '1';
  String fechaHora = '2020-06-08 10:15:00';
  String placa = 'BWK093';
  String tipoVehiculo = '1';

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        barcode: json["barcode"],
        codPark: json["codPark"],
        codTerminal: json["codTerminal"],
        estado: json["estado"],
        fechaHora: json["fechaHora"],
        placa: json["placa"],
        tipoVehiculo: json["tipoVehiculo"],
      );

  Map<String, dynamic> toJson() => {
        "barcode": barcode,
        "codPark": codPark,
        "codTerminal": codTerminal,
        "estado": estado.toString(),
        "fechaHora": fechaHora,
        "placa": placa,
        "tipoVehiculo": tipoVehiculo.toString(),
      };
}
