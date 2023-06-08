import 'package:dio/dio.dart';
import 'package:flutter_application_1/domain/datasources/dirrecionesdb_domein.dart';
import 'package:flutter_application_1/domain/entities/entities_lugares.dart';

class DirrecionesdbDatabase extends Dirrecionesdbdomein {
  final dio = Dio(BaseOptions(baseUrl: 'https://nowmobile.mx/sepomex-get'));

  @override
  Future<List<Dirrecionesdb>> listadirreciones() async {
    final response = await dio.get('https://nowmobile.mx/sepomex-get/50230');
    response.data;
    final List<Dirrecionesdb> datos = [];

    return datos;
  }

  void initState() {
    listadirreciones();
  }
}
