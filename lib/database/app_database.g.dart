// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final int id;
  final String name;
  final String email;
  final String role;
  final String cpfOnlyNumbers;
  final String pictureUrl;
  User(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.name,
      required this.email,
      required this.role,
      required this.cpfOnlyNumbers,
      required this.pictureUrl});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      role: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}role'])!,
      cpfOnlyNumbers: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cpf_only_numbers'])!,
      pictureUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}picture_url'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['role'] = Variable<String>(role);
    map['cpf_only_numbers'] = Variable<String>(cpfOnlyNumbers);
    map['picture_url'] = Variable<String>(pictureUrl);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      name: Value(name),
      email: Value(email),
      role: Value(role),
      cpfOnlyNumbers: Value(cpfOnlyNumbers),
      pictureUrl: Value(pictureUrl),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      role: serializer.fromJson<String>(json['role']),
      cpfOnlyNumbers: serializer.fromJson<String>(json['cpfOnlyNumbers']),
      pictureUrl: serializer.fromJson<String>(json['pictureUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'role': serializer.toJson<String>(role),
      'cpfOnlyNumbers': serializer.toJson<String>(cpfOnlyNumbers),
      'pictureUrl': serializer.toJson<String>(pictureUrl),
    };
  }

  User copyWith(
          {DateTime? createdAt,
          DateTime? updatedAt,
          int? id,
          String? name,
          String? email,
          String? role,
          String? cpfOnlyNumbers,
          String? pictureUrl}) =>
      User(
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        role: role ?? this.role,
        cpfOnlyNumbers: cpfOnlyNumbers ?? this.cpfOnlyNumbers,
        pictureUrl: pictureUrl ?? this.pictureUrl,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('role: $role, ')
          ..write('cpfOnlyNumbers: $cpfOnlyNumbers, ')
          ..write('pictureUrl: $pictureUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      createdAt.hashCode,
      $mrjc(
          updatedAt.hashCode,
          $mrjc(
              id.hashCode,
              $mrjc(
                  name.hashCode,
                  $mrjc(
                      email.hashCode,
                      $mrjc(
                          role.hashCode,
                          $mrjc(cpfOnlyNumbers.hashCode,
                              pictureUrl.hashCode))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.role == this.role &&
          other.cpfOnlyNumbers == this.cpfOnlyNumbers &&
          other.pictureUrl == this.pictureUrl);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> role;
  final Value<String> cpfOnlyNumbers;
  final Value<String> pictureUrl;
  const UsersCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.role = const Value.absent(),
    this.cpfOnlyNumbers = const Value.absent(),
    this.pictureUrl = const Value.absent(),
  });
  UsersCompanion.insert({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    required String name,
    required String email,
    required String role,
    required String cpfOnlyNumbers,
    required String pictureUrl,
  })  : name = Value(name),
        email = Value(email),
        role = Value(role),
        cpfOnlyNumbers = Value(cpfOnlyNumbers),
        pictureUrl = Value(pictureUrl);
  static Insertable<User> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? role,
    Expression<String>? cpfOnlyNumbers,
    Expression<String>? pictureUrl,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (role != null) 'role': role,
      if (cpfOnlyNumbers != null) 'cpf_only_numbers': cpfOnlyNumbers,
      if (pictureUrl != null) 'picture_url': pictureUrl,
    });
  }

  UsersCompanion copyWith(
      {Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? id,
      Value<String>? name,
      Value<String>? email,
      Value<String>? role,
      Value<String>? cpfOnlyNumbers,
      Value<String>? pictureUrl}) {
    return UsersCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
      cpfOnlyNumbers: cpfOnlyNumbers ?? this.cpfOnlyNumbers,
      pictureUrl: pictureUrl ?? this.pictureUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (cpfOnlyNumbers.present) {
      map['cpf_only_numbers'] = Variable<String>(cpfOnlyNumbers.value);
    }
    if (pictureUrl.present) {
      map['picture_url'] = Variable<String>(pictureUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('role: $role, ')
          ..write('cpfOnlyNumbers: $cpfOnlyNumbers, ')
          ..write('pictureUrl: $pictureUrl')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 5, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _roleMeta = const VerificationMeta('role');
  late final GeneratedColumn<String?> role = GeneratedColumn<String?>(
      'role', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 20),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _cpfOnlyNumbersMeta =
      const VerificationMeta('cpfOnlyNumbers');
  late final GeneratedColumn<String?> cpfOnlyNumbers = GeneratedColumn<String?>(
      'cpf_only_numbers', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 11, maxTextLength: 11),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _pictureUrlMeta = const VerificationMeta('pictureUrl');
  late final GeneratedColumn<String?> pictureUrl = GeneratedColumn<String?>(
      'picture_url', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 7, maxTextLength: 255),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [createdAt, updatedAt, id, name, email, role, cpfOnlyNumbers, pictureUrl];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role']!, _roleMeta));
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('cpf_only_numbers')) {
      context.handle(
          _cpfOnlyNumbersMeta,
          cpfOnlyNumbers.isAcceptableOrUnknown(
              data['cpf_only_numbers']!, _cpfOnlyNumbersMeta));
    } else if (isInserting) {
      context.missing(_cpfOnlyNumbersMeta);
    }
    if (data.containsKey('picture_url')) {
      context.handle(
          _pictureUrlMeta,
          pictureUrl.isAcceptableOrUnknown(
              data['picture_url']!, _pictureUrlMeta));
    } else if (isInserting) {
      context.missing(_pictureUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class Place extends DataClass implements Insertable<Place> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final int id;
  final String name;
  final int userId;
  Place(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.name,
      required this.userId});
  factory Place.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Place(
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['user_id'] = Variable<int>(userId);
    return map;
  }

  PlacesCompanion toCompanion(bool nullToAbsent) {
    return PlacesCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      name: Value(name),
      userId: Value(userId),
    );
  }

  factory Place.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Place(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'userId': serializer.toJson<int>(userId),
    };
  }

  Place copyWith(
          {DateTime? createdAt,
          DateTime? updatedAt,
          int? id,
          String? name,
          int? userId}) =>
      Place(
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        id: id ?? this.id,
        name: name ?? this.name,
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('Place(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      createdAt.hashCode,
      $mrjc(updatedAt.hashCode,
          $mrjc(id.hashCode, $mrjc(name.hashCode, userId.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Place &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.name == this.name &&
          other.userId == this.userId);
}

class PlacesCompanion extends UpdateCompanion<Place> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> id;
  final Value<String> name;
  final Value<int> userId;
  const PlacesCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.userId = const Value.absent(),
  });
  PlacesCompanion.insert({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    required String name,
    required int userId,
  })  : name = Value(name),
        userId = Value(userId);
  static Insertable<Place> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? userId,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (userId != null) 'user_id': userId,
    });
  }

  PlacesCompanion copyWith(
      {Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? id,
      Value<String>? name,
      Value<int>? userId}) {
    return PlacesCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      name: name ?? this.name,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlacesCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $PlacesTable extends Places with TableInfo<$PlacesTable, Place> {
  final GeneratedDatabase _db;
  final String? _alias;
  $PlacesTable(this._db, [this._alias]);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'user_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES users(id)');
  @override
  List<GeneratedColumn> get $columns =>
      [createdAt, updatedAt, id, name, userId];
  @override
  String get aliasedName => _alias ?? 'places';
  @override
  String get actualTableName => 'places';
  @override
  VerificationContext validateIntegrity(Insertable<Place> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Place map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Place.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PlacesTable createAlias(String alias) {
    return $PlacesTable(_db, alias);
  }
}

class Address extends DataClass implements Insertable<Address> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final int id;
  final String address;
  final String number;
  final String neighborhood;
  final String city;
  final String country;
  final String zipCode;
  Address(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.address,
      required this.number,
      required this.neighborhood,
      required this.city,
      required this.country,
      required this.zipCode});
  factory Address.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Address(
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      address: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address'])!,
      number: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number'])!,
      neighborhood: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}neighborhood'])!,
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city'])!,
      country: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}country'])!,
      zipCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}zip_code'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<int>(id);
    map['address'] = Variable<String>(address);
    map['number'] = Variable<String>(number);
    map['neighborhood'] = Variable<String>(neighborhood);
    map['city'] = Variable<String>(city);
    map['country'] = Variable<String>(country);
    map['zip_code'] = Variable<String>(zipCode);
    return map;
  }

  AddressesCompanion toCompanion(bool nullToAbsent) {
    return AddressesCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      address: Value(address),
      number: Value(number),
      neighborhood: Value(neighborhood),
      city: Value(city),
      country: Value(country),
      zipCode: Value(zipCode),
    );
  }

  factory Address.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Address(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<int>(json['id']),
      address: serializer.fromJson<String>(json['address']),
      number: serializer.fromJson<String>(json['number']),
      neighborhood: serializer.fromJson<String>(json['neighborhood']),
      city: serializer.fromJson<String>(json['city']),
      country: serializer.fromJson<String>(json['country']),
      zipCode: serializer.fromJson<String>(json['zipCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<int>(id),
      'address': serializer.toJson<String>(address),
      'number': serializer.toJson<String>(number),
      'neighborhood': serializer.toJson<String>(neighborhood),
      'city': serializer.toJson<String>(city),
      'country': serializer.toJson<String>(country),
      'zipCode': serializer.toJson<String>(zipCode),
    };
  }

  Address copyWith(
          {DateTime? createdAt,
          DateTime? updatedAt,
          int? id,
          String? address,
          String? number,
          String? neighborhood,
          String? city,
          String? country,
          String? zipCode}) =>
      Address(
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        id: id ?? this.id,
        address: address ?? this.address,
        number: number ?? this.number,
        neighborhood: neighborhood ?? this.neighborhood,
        city: city ?? this.city,
        country: country ?? this.country,
        zipCode: zipCode ?? this.zipCode,
      );
  @override
  String toString() {
    return (StringBuffer('Address(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('number: $number, ')
          ..write('neighborhood: $neighborhood, ')
          ..write('city: $city, ')
          ..write('country: $country, ')
          ..write('zipCode: $zipCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      createdAt.hashCode,
      $mrjc(
          updatedAt.hashCode,
          $mrjc(
              id.hashCode,
              $mrjc(
                  address.hashCode,
                  $mrjc(
                      number.hashCode,
                      $mrjc(
                          neighborhood.hashCode,
                          $mrjc(city.hashCode,
                              $mrjc(country.hashCode, zipCode.hashCode)))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Address &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.address == this.address &&
          other.number == this.number &&
          other.neighborhood == this.neighborhood &&
          other.city == this.city &&
          other.country == this.country &&
          other.zipCode == this.zipCode);
}

class AddressesCompanion extends UpdateCompanion<Address> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> id;
  final Value<String> address;
  final Value<String> number;
  final Value<String> neighborhood;
  final Value<String> city;
  final Value<String> country;
  final Value<String> zipCode;
  const AddressesCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.address = const Value.absent(),
    this.number = const Value.absent(),
    this.neighborhood = const Value.absent(),
    this.city = const Value.absent(),
    this.country = const Value.absent(),
    this.zipCode = const Value.absent(),
  });
  AddressesCompanion.insert({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    required String address,
    required String number,
    required String neighborhood,
    required String city,
    required String country,
    required String zipCode,
  })  : address = Value(address),
        number = Value(number),
        neighborhood = Value(neighborhood),
        city = Value(city),
        country = Value(country),
        zipCode = Value(zipCode);
  static Insertable<Address> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? id,
    Expression<String>? address,
    Expression<String>? number,
    Expression<String>? neighborhood,
    Expression<String>? city,
    Expression<String>? country,
    Expression<String>? zipCode,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (address != null) 'address': address,
      if (number != null) 'number': number,
      if (neighborhood != null) 'neighborhood': neighborhood,
      if (city != null) 'city': city,
      if (country != null) 'country': country,
      if (zipCode != null) 'zip_code': zipCode,
    });
  }

  AddressesCompanion copyWith(
      {Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? id,
      Value<String>? address,
      Value<String>? number,
      Value<String>? neighborhood,
      Value<String>? city,
      Value<String>? country,
      Value<String>? zipCode}) {
    return AddressesCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      address: address ?? this.address,
      number: number ?? this.number,
      neighborhood: neighborhood ?? this.neighborhood,
      city: city ?? this.city,
      country: country ?? this.country,
      zipCode: zipCode ?? this.zipCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (neighborhood.present) {
      map['neighborhood'] = Variable<String>(neighborhood.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (zipCode.present) {
      map['zip_code'] = Variable<String>(zipCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressesCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('number: $number, ')
          ..write('neighborhood: $neighborhood, ')
          ..write('city: $city, ')
          ..write('country: $country, ')
          ..write('zipCode: $zipCode')
          ..write(')'))
        .toString();
  }
}

class $AddressesTable extends Addresses
    with TableInfo<$AddressesTable, Address> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AddressesTable(this._db, [this._alias]);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  late final GeneratedColumn<String?> address = GeneratedColumn<String?>(
      'address', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<String?> number = GeneratedColumn<String?>(
      'number', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _neighborhoodMeta =
      const VerificationMeta('neighborhood');
  late final GeneratedColumn<String?> neighborhood = GeneratedColumn<String?>(
      'neighborhood', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _countryMeta = const VerificationMeta('country');
  late final GeneratedColumn<String?> country = GeneratedColumn<String?>(
      'country', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _zipCodeMeta = const VerificationMeta('zipCode');
  late final GeneratedColumn<String?> zipCode = GeneratedColumn<String?>(
      'zip_code', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        createdAt,
        updatedAt,
        id,
        address,
        number,
        neighborhood,
        city,
        country,
        zipCode
      ];
  @override
  String get aliasedName => _alias ?? 'addresses';
  @override
  String get actualTableName => 'addresses';
  @override
  VerificationContext validateIntegrity(Insertable<Address> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('neighborhood')) {
      context.handle(
          _neighborhoodMeta,
          neighborhood.isAcceptableOrUnknown(
              data['neighborhood']!, _neighborhoodMeta));
    } else if (isInserting) {
      context.missing(_neighborhoodMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('zip_code')) {
      context.handle(_zipCodeMeta,
          zipCode.isAcceptableOrUnknown(data['zip_code']!, _zipCodeMeta));
    } else if (isInserting) {
      context.missing(_zipCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Address map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Address.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AddressesTable createAlias(String alias) {
    return $AddressesTable(_db, alias);
  }
}

class Telephone extends DataClass implements Insertable<Telephone> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final int id;
  final String name;
  Telephone(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.name});
  factory Telephone.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Telephone(
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TelephonesCompanion toCompanion(bool nullToAbsent) {
    return TelephonesCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      name: Value(name),
    );
  }

  factory Telephone.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Telephone(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Telephone copyWith(
          {DateTime? createdAt, DateTime? updatedAt, int? id, String? name}) =>
      Telephone(
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Telephone(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(createdAt.hashCode,
      $mrjc(updatedAt.hashCode, $mrjc(id.hashCode, name.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Telephone &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.name == this.name);
}

class TelephonesCompanion extends UpdateCompanion<Telephone> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> id;
  final Value<String> name;
  const TelephonesCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  TelephonesCompanion.insert({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<Telephone> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  TelephonesCompanion copyWith(
      {Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? id,
      Value<String>? name}) {
    return TelephonesCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TelephonesCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $TelephonesTable extends Telephones
    with TableInfo<$TelephonesTable, Telephone> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TelephonesTable(this._db, [this._alias]);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [createdAt, updatedAt, id, name];
  @override
  String get aliasedName => _alias ?? 'telephones';
  @override
  String get actualTableName => 'telephones';
  @override
  VerificationContext validateIntegrity(Insertable<Telephone> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Telephone map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Telephone.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TelephonesTable createAlias(String alias) {
    return $TelephonesTable(_db, alias);
  }
}

class Therapist extends DataClass implements Insertable<Therapist> {
  final DateTime createdAt;
  final DateTime updatedAt;
  final int id;
  final String sannyas;
  Therapist(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.sannyas});
  factory Therapist.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Therapist(
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      sannyas: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sannyas'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['id'] = Variable<int>(id);
    map['sannyas'] = Variable<String>(sannyas);
    return map;
  }

  TherapistsCompanion toCompanion(bool nullToAbsent) {
    return TherapistsCompanion(
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      id: Value(id),
      sannyas: Value(sannyas),
    );
  }

  factory Therapist.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Therapist(
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      id: serializer.fromJson<int>(json['id']),
      sannyas: serializer.fromJson<String>(json['sannyas']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'id': serializer.toJson<int>(id),
      'sannyas': serializer.toJson<String>(sannyas),
    };
  }

  Therapist copyWith(
          {DateTime? createdAt,
          DateTime? updatedAt,
          int? id,
          String? sannyas}) =>
      Therapist(
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        id: id ?? this.id,
        sannyas: sannyas ?? this.sannyas,
      );
  @override
  String toString() {
    return (StringBuffer('Therapist(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('sannyas: $sannyas')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(createdAt.hashCode,
      $mrjc(updatedAt.hashCode, $mrjc(id.hashCode, sannyas.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Therapist &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.id == this.id &&
          other.sannyas == this.sannyas);
}

class TherapistsCompanion extends UpdateCompanion<Therapist> {
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> id;
  final Value<String> sannyas;
  const TherapistsCompanion({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    this.sannyas = const Value.absent(),
  });
  TherapistsCompanion.insert({
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.id = const Value.absent(),
    required String sannyas,
  }) : sannyas = Value(sannyas);
  static Insertable<Therapist> custom({
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? id,
    Expression<String>? sannyas,
  }) {
    return RawValuesInsertable({
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (id != null) 'id': id,
      if (sannyas != null) 'sannyas': sannyas,
    });
  }

  TherapistsCompanion copyWith(
      {Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? id,
      Value<String>? sannyas}) {
    return TherapistsCompanion(
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      sannyas: sannyas ?? this.sannyas,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sannyas.present) {
      map['sannyas'] = Variable<String>(sannyas.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TherapistsCompanion(')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('id: $id, ')
          ..write('sannyas: $sannyas')
          ..write(')'))
        .toString();
  }
}

class $TherapistsTable extends Therapists
    with TableInfo<$TherapistsTable, Therapist> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TherapistsTable(this._db, [this._alias]);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _sannyasMeta = const VerificationMeta('sannyas');
  late final GeneratedColumn<String?> sannyas = GeneratedColumn<String?>(
      'sannyas', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 30),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [createdAt, updatedAt, id, sannyas];
  @override
  String get aliasedName => _alias ?? 'therapists';
  @override
  String get actualTableName => 'therapists';
  @override
  VerificationContext validateIntegrity(Insertable<Therapist> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('sannyas')) {
      context.handle(_sannyasMeta,
          sannyas.isAcceptableOrUnknown(data['sannyas']!, _sannyasMeta));
    } else if (isInserting) {
      context.missing(_sannyasMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Therapist map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Therapist.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TherapistsTable createAlias(String alias) {
    return $TherapistsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UsersTable users = $UsersTable(this);
  late final $PlacesTable places = $PlacesTable(this);
  late final $AddressesTable addresses = $AddressesTable(this);
  late final $TelephonesTable telephones = $TelephonesTable(this);
  late final $TherapistsTable therapists = $TherapistsTable(this);
  late final PlacesDao placesDao = PlacesDao(this as AppDatabase);
  late final AddressesDao addressesDao = AddressesDao(this as AppDatabase);
  late final TelephoneDao telephoneDao = TelephoneDao(this as AppDatabase);
  late final TherapistsDao therapistsDao = TherapistsDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, places, addresses, telephones, therapists];
}
