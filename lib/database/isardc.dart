//import 'package:isar/isar.dart';
// import 'package:flutter_application_1/presentacion/models/Isardc.dart';

// class IsardcServi{
//   late Future<Isar> db;

//   IsardcServi(){
//     db = IsardcServi().db;
//   }

//   Future<List<Isardc>> getAllIsardc() async{
//     final isar = await db;
//     return await isar.isardcs.where().findAll();
//   }
//   Future<bool> saveIsardc(Isardc newIsardc) async{
//     try{
//       final isar = await db;

//       await isar.writeTxn(() async {
//         await isar.isardcs.put(newIsardc);
//       });
//       return true;
//     }on IsarError catch(error) {
//       throw Exception(error.message);
//     }
//   }
// }

import 'package:flutter_application_1/database/service_Isar.dart';
import 'package:flutter_application_1/presentacion/models/Isardc.dart';
import 'package:isar/isar.dart';

class Isardcdao {
  final isar = IsarHelper.instance.isar;

  Future<List<Isardc>> getAll() async {
    return isar.isardcs.where().findAll();
  }

  Future<bool> deleteOne(Isardc isardc) async {
    return isar.writeTxn(() => isar.isardcs.delete(isardc.id));
  }

  Future<int> upsert(Isardc isardc) async {
    return isar.writeTxn(() => isar.isardcs.put(isardc));
  }
}
