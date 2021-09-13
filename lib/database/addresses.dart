import 'package:muladhara_flutter/database/base_table.dart';
import 'package:moor/moor.dart';

import 'app_database.dart';

part 'addresses.g.dart';

@DataClassName('Address')
class Addresses extends BaseTable {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get address => text().withLength(min: 3, max: 30)();
  TextColumn get number => text().withLength(max: 10)();
  TextColumn get neighborhood => text().withLength(min: 3, max: 30)();
  TextColumn get city => text().withLength(min: 3, max: 30)();
  TextColumn get country => text().withLength(min: 3, max: 30)();
  TextColumn get zipCode => text().withLength(min: 3, max: 30)();
}

@UseDao(tables: [Addresses])
class AddressesDao extends DatabaseAccessor<AppDatabase>
    with _$AddressesDaoMixin {
  final AppDatabase db;
  AddressesDao(this.db) : super(db);
}
