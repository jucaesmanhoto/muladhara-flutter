import 'package:moor/moor.dart';

abstract class BaseTable extends Table {
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
