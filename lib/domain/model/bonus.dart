class Bono {
  Bono(
      {this.duracion,
      this.descripcionTipoBono,
      this.codBono,
      this.isCheck = false});

  int duracion;
  String descripcionTipoBono;
  String codBono;
  bool isCheck = false;
  // set setCheck(bool check){
  //   this.isCheck = check;
  // }
  // get check{
  //   return isCheck;
  // }
  factory Bono.fromJson(Map<String, dynamic> json) => Bono(
      duracion: json["duracion"],
      descripcionTipoBono: json["descripcionTipoBono"],
      codBono: json["codBono"],
      isCheck: false);

  Map<String, dynamic> toJson() => {
        "duracion": duracion,
        "descripcionTipoBono": descripcionTipoBono,
        "codBono": codBono,
      };
}
