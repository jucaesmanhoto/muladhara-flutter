import 'package:moor/moor.dart';

import 'app_database.dart';
import 'base_table.dart';

part 'telephones.g.dart';

class Telephones extends BaseTable {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 3, max: 30)();
}

@UseDao(tables: [Telephones])
class TelephoneDao extends DatabaseAccessor<AppDatabase>
    with _$TelephoneDaoMixin {
  final AppDatabase db;
  TelephoneDao(this.db) : super(db);

  // Stream<List<PlaceWithDetails>> all = select(places).
}
