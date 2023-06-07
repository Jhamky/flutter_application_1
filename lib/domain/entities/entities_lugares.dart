class Dirrecionesdb {
  Id id;
  int idEstado;
  String estado;
  int idMunicipio;
  String municipio;
  String ciudad;
  String zona;
  int cp;
  String asentamiento;
  String tipo;

  Dirrecionesdb({
    required this.id,
    required this.idEstado,
    required this.estado,
    required this.idMunicipio,
    required this.municipio,
    required this.ciudad,
    required this.zona,
    required this.cp,
    required this.asentamiento,
    required this.tipo,
  });

  factory Dirrecionesdb.fromJson(Map<String, dynamic> json) => Dirrecionesdb(
        id: Id.fromJson(json["_id"]),
        idEstado: json["idEstado"],
        estado: json["estado"],
        idMunicipio: json["idMunicipio"],
        municipio: json["municipio"],
        ciudad: json["ciudad"],
        zona: json["zona"],
        cp: json["cp"],
        asentamiento: json["asentamiento"],
        tipo: json["tipo"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "idEstado": idEstado,
        "estado": estado,
        "idMunicipio": idMunicipio,
        "municipio": municipio,
        "ciudad": ciudad,
        "zona": zona,
        "cp": cp,
        "asentamiento": asentamiento,
        "tipo": tipo,
      };
}

class Id {
  String str;

  Id({
    required this.str,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        str: json["_str"],
      );

  Map<String, dynamic> toJson() => {
        "_str": str,
      };
}
