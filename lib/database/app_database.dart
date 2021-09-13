import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:muladhara_flutter/database/therapists.dart';
import 'package:muladhara_flutter/database/users.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'addresses.dart';
import 'places.dart';
import 'telephones.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file, logStatements: true);
  });
}

@UseMoor(
    tables: [Users, Places, Addresses, Telephones, Therapists],
    daos: [PlacesDao, AddressesDao, TelephoneDao, TherapistsDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 0;
}
