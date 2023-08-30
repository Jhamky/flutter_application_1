import 'package:isar/isar.dart';
import 'package:flutter_application_1/presentacion/models/Isardc.dart';

class IsarService {
  late Future<Isar> db;
  isarService() {
    db = openDb();
  }

  Future<List<Isardc>> saveDicc(Isardc newIsardc) async {
    final isar = await db;
    isar.writeTxn<String>(() => isar.newIsardc.putSync(newIsardc));
    throw UnimplementedError();
  }

  Future<Isar> openDb() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([IsardcSchema], directory: '.');
    }
    return await Future.value(Isar.getInstance());
  }
}
