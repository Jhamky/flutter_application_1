import 'package:flutter_application_1/domain/entities/dirreciones.dart';

class DirrecionesMapper {
  static Welcome dirreciondbToEntie(Welcome welcome) =>
      Welcome(
          id: welcome.id,
          idEstado: welcome.idEstado,
          estado: welcome.estado,
          idMunicipio: welcome.idMunicipio,
          municipio: welcome.municipio,
          ciudad: welcome.ciudad,
          zona: welcome.zona,
          cp: welcome.cp,
          asentamiento: welcome.asentamiento,
          tipo: welcome.tipo
        );
}
