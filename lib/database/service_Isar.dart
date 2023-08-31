import 'package:isar/isar.dart';
import 'package:flutter_application_1/presentacion/models/Isardc.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;
  isarService() {
    db = openDb();
  }

  Future<Isar> openDb() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([IsardcSchema],
          directory: dir.path, inspector: true);
    }
    return await Future.value(Isar.getInstance());
  }

  Future<List<Isardc>> saveDicc(Isardc newIsardc) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.isardcs.putSync(newIsardc));
    throw UnimplementedError();
  }
}
