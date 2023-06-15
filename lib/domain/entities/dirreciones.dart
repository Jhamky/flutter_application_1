import 'package:isar/isar.dart';

class Welcome {
  final Id? id;
  final int idEstado;
  final String estado;
  final int idMunicipio;
  final String municipio;
  final String ciudad;
  final String zona;
  final int cp;
  final String asentamiento;
  final String tipo;

  Welcome({
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
}
