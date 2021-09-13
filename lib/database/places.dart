import 'package:moor/moor.dart';

import 'app_database.dart';
import 'base_table.dart';

part 'places.g.dart';

class Places extends BaseTable {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 3, max: 30)();
  IntColumn get userId => integer().customConstraint('REFERENCES users(id)')();
}

@UseDao(tables: [Places])
class PlacesDao extends DatabaseAccessor<AppDatabase> with _$PlacesDaoMixin {
  final AppDatabase db;
  PlacesDao(this.db) : super(db);

  Future<List<Place>> all() => select(places).get();
}
