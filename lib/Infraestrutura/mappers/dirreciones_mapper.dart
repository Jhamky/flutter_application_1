import 'package:flutter_application_1/domain/entities/entities_lugares.dart';

class DirrecionesMapper {
  static Dirrecionesdb dirreciondb(Dirrecionesdb dirrecionesdb) =>
      Dirrecionesdb(
          id: dirrecionesdb.id,
          idEstado: dirrecionesdb.idEstado,
          estado: dirrecionesdb.estado,
          idMunicipio: dirrecionesdb.idMunicipio,
          municipio: dirrecionesdb.municipio,
          ciudad: dirrecionesdb.ciudad,
          zona: dirrecionesdb.zona,
          cp: dirrecionesdb.cp,
          asentamiento: dirrecionesdb.asentamiento,
          tipo: dirrecionesdb.tipo);
}
