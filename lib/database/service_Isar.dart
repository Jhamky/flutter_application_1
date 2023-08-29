import 'package:isar/isar.dart';
import 'package:flutter_application_1/presentacion/models/Isardc.dart';

class IsarService {
  late Future<Isar> db;
  sarService() {
    db = openDb();
  }

  Future<Isar> openDb() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([IsardcSchema]);
    }
    return await Future.value(Isar.getInstance());
  }
}
