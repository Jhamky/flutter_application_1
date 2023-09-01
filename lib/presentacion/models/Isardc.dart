import 'package:isar/isar.dart';
part 'Isardc.g.dart';

@collection
class Isardc {
  Id id = Isar.autoIncrement;
  String name = '';
  String calle = '';
  String codigopostal = '';
  String estado = '';
  String municipio = '';
  String asentamiento = '';
  String adicional = '';
}
