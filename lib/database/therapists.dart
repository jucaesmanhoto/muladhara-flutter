import 'package:moor/moor.dart';

import 'app_database.dart';
import 'base_table.dart';

part 'therapists.g.dart';

class Therapists extends BaseTable {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get sannyas => text().withLength(min: 3, max: 30)();
}

@UseDao(tables: [Therapists])
class TherapistsDao extends DatabaseAccessor<AppDatabase>
    with _$TherapistsDaoMixin {
  final AppDatabase db;
  TherapistsDao(this.db) : super(db);
}
