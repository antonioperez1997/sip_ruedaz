import 'dart:convert';

import 'package:sip_ruedaz/domain/model/Data.dart';

UserBeParkingModel userBeParkingModelFromJson(String str) =>
    UserBeParkingModel.fromJson(json.decode(str));

String userBeParkingModelToJson(UserBeParkingModel data) =>
    json.encode(data.toJson());

class UserBeParkingModel {
  UserBeParkingModel({
    this.estado,
    this.mensaje,
    this.detalle,
    this.data,
  });

  bool estado = false;
  String mensaje = "";
  String detalle = "";
  Data data;

  factory UserBeParkingModel.fromJson(Map<String, dynamic> json) =>
      UserBeParkingModel(
        estado: json["estado"],
        mensaje: json["mensaje"],
        detalle: json["detalle"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "estado": estado,
        "mensaje": mensaje,
        "detalle": detalle,
        "data": data.toJson(),
      };
}
