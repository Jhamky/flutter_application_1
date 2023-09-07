import 'package:flutter_application_1/presentacion/models/Isardc.dart';
import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_application_1/presentacion/models/Isardc.dart';
// import 'package:path_provider/path_provider.dart';

class IsarDatasource {
  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([IsardcSchema], directory: '', inspector: true);
    }

    return Future.value(Isar.getInstance());
  }

//   late Future<Isar> db;
//   isarService() {
//     db = openDb();
//   }

//   Future<Isar> openDb() async {
//     final dir = await getApplicationDocumentsDirectory();
//     if (Isar.instanceNames.isEmpty) {
//       return await Isar.open([IsardcSchema],
//           directory: dir.path, inspector: true);
//     }
//     return Future.value(Isar.getInstance());
//   }

//   Future<List<Isardc>> saveDicc(Isardc newIsardc) async {
//     final isar = await db;
//     isar.writeTxnSync<int>(() => isar.isardcs.putSync(newIsardc));
//     throw UnimplementedError();
//   }
}

// class IsarHelper {
//   static IsarHelper? isarHelper;
//   IsarHelper._internal();

//   static IsarHelper get instance => isarHelper ??= IsarHelper._internal();

//   static Isar? _isarDb;

//   Isar get isar => _isarDb!;

//   Future<void> init() async {
//     if (_isarDb != null) {
//       return;
//     }
//     final path = (await getApplicationDocumentsDirectory()).path;
//     _isarDb = await Isar.open([IsardcSchema], directory: path);
//   }
// }
