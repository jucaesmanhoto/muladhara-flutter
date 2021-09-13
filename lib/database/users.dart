import 'package:moor/moor.dart';

import 'app_database.dart';
import 'base_table.dart';

part 'users.g.dart';

class Users extends BaseTable {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 3, max: 30)();
  TextColumn get email => text().withLength(min: 5, max: 30)();
  TextColumn get role => text().withLength(min: 3, max: 20)();
  TextColumn get cpfOnlyNumbers => text().withLength(min: 11, max: 11)();
  TextColumn get pictureUrl => text().withLength(min: 7, max: 255)();
}

@UseDao(tables: [Users])
class UsersDao extends DatabaseAccessor<AppDatabase> with _$UsersDaoMixin {
  final AppDatabase db;
  UsersDao(this.db) : super(db);
}
