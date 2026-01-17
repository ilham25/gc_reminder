// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ReminderTableTable extends ReminderTable
    with TableInfo<$ReminderTableTable, ReminderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReminderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  late final GeneratedColumnWithTypeConverter<ReminderType, String> type =
      GeneratedColumn<String>(
        'type',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<ReminderType>($ReminderTableTable.$convertertype);
  static const VerificationMeta _placeMeta = const VerificationMeta('place');
  @override
  late final GeneratedColumn<String> place = GeneratedColumn<String>(
    'place',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _startAtMeta = const VerificationMeta(
    'startAt',
  );
  @override
  late final GeneratedColumn<DateTime> startAt = GeneratedColumn<DateTime>(
    'start_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endAtMeta = const VerificationMeta('endAt');
  @override
  late final GeneratedColumn<DateTime> endAt = GeneratedColumn<DateTime>(
    'end_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _doneAtMeta = const VerificationMeta('doneAt');
  @override
  late final GeneratedColumn<DateTime> doneAt = GeneratedColumn<DateTime>(
    'done_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    type,
    place,
    latitude,
    longitude,
    startAt,
    endAt,
    doneAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reminder_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReminderTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('place')) {
      context.handle(
        _placeMeta,
        place.isAcceptableOrUnknown(data['place']!, _placeMeta),
      );
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    }
    if (data.containsKey('start_at')) {
      context.handle(
        _startAtMeta,
        startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta),
      );
    } else if (isInserting) {
      context.missing(_startAtMeta);
    }
    if (data.containsKey('end_at')) {
      context.handle(
        _endAtMeta,
        endAt.isAcceptableOrUnknown(data['end_at']!, _endAtMeta),
      );
    }
    if (data.containsKey('done_at')) {
      context.handle(
        _doneAtMeta,
        doneAt.isAcceptableOrUnknown(data['done_at']!, _doneAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReminderTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReminderTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      type: $ReminderTableTable.$convertertype.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}type'],
        )!,
      ),
      place: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}place'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      ),
      startAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_at'],
      )!,
      endAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_at'],
      ),
      doneAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}done_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      ),
    );
  }

  @override
  $ReminderTableTable createAlias(String alias) {
    return $ReminderTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ReminderType, String, String> $convertertype =
      const EnumNameConverter<ReminderType>(ReminderType.values);
}

class ReminderTableData extends DataClass
    implements Insertable<ReminderTableData> {
  final int id;
  final String title;
  final String? description;
  final ReminderType type;
  final String? place;
  final double? latitude;
  final double? longitude;
  final DateTime startAt;
  final DateTime? endAt;
  final DateTime? doneAt;
  final DateTime? createdAt;
  const ReminderTableData({
    required this.id,
    required this.title,
    this.description,
    required this.type,
    this.place,
    this.latitude,
    this.longitude,
    required this.startAt,
    this.endAt,
    this.doneAt,
    this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    {
      map['type'] = Variable<String>(
        $ReminderTableTable.$convertertype.toSql(type),
      );
    }
    if (!nullToAbsent || place != null) {
      map['place'] = Variable<String>(place);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    map['start_at'] = Variable<DateTime>(startAt);
    if (!nullToAbsent || endAt != null) {
      map['end_at'] = Variable<DateTime>(endAt);
    }
    if (!nullToAbsent || doneAt != null) {
      map['done_at'] = Variable<DateTime>(doneAt);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  ReminderTableCompanion toCompanion(bool nullToAbsent) {
    return ReminderTableCompanion(
      id: Value(id),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: Value(type),
      place: place == null && nullToAbsent
          ? const Value.absent()
          : Value(place),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      startAt: Value(startAt),
      endAt: endAt == null && nullToAbsent
          ? const Value.absent()
          : Value(endAt),
      doneAt: doneAt == null && nullToAbsent
          ? const Value.absent()
          : Value(doneAt),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory ReminderTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReminderTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      type: $ReminderTableTable.$convertertype.fromJson(
        serializer.fromJson<String>(json['type']),
      ),
      place: serializer.fromJson<String?>(json['place']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      startAt: serializer.fromJson<DateTime>(json['startAt']),
      endAt: serializer.fromJson<DateTime?>(json['endAt']),
      doneAt: serializer.fromJson<DateTime?>(json['doneAt']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'type': serializer.toJson<String>(
        $ReminderTableTable.$convertertype.toJson(type),
      ),
      'place': serializer.toJson<String?>(place),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'startAt': serializer.toJson<DateTime>(startAt),
      'endAt': serializer.toJson<DateTime?>(endAt),
      'doneAt': serializer.toJson<DateTime?>(doneAt),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  ReminderTableData copyWith({
    int? id,
    String? title,
    Value<String?> description = const Value.absent(),
    ReminderType? type,
    Value<String?> place = const Value.absent(),
    Value<double?> latitude = const Value.absent(),
    Value<double?> longitude = const Value.absent(),
    DateTime? startAt,
    Value<DateTime?> endAt = const Value.absent(),
    Value<DateTime?> doneAt = const Value.absent(),
    Value<DateTime?> createdAt = const Value.absent(),
  }) => ReminderTableData(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description.present ? description.value : this.description,
    type: type ?? this.type,
    place: place.present ? place.value : this.place,
    latitude: latitude.present ? latitude.value : this.latitude,
    longitude: longitude.present ? longitude.value : this.longitude,
    startAt: startAt ?? this.startAt,
    endAt: endAt.present ? endAt.value : this.endAt,
    doneAt: doneAt.present ? doneAt.value : this.doneAt,
    createdAt: createdAt.present ? createdAt.value : this.createdAt,
  );
  ReminderTableData copyWithCompanion(ReminderTableCompanion data) {
    return ReminderTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      type: data.type.present ? data.type.value : this.type,
      place: data.place.present ? data.place.value : this.place,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      startAt: data.startAt.present ? data.startAt.value : this.startAt,
      endAt: data.endAt.present ? data.endAt.value : this.endAt,
      doneAt: data.doneAt.present ? data.doneAt.value : this.doneAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReminderTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('place: $place, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('doneAt: $doneAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    description,
    type,
    place,
    latitude,
    longitude,
    startAt,
    endAt,
    doneAt,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReminderTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.type == this.type &&
          other.place == this.place &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.startAt == this.startAt &&
          other.endAt == this.endAt &&
          other.doneAt == this.doneAt &&
          other.createdAt == this.createdAt);
}

class ReminderTableCompanion extends UpdateCompanion<ReminderTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<ReminderType> type;
  final Value<String?> place;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<DateTime> startAt;
  final Value<DateTime?> endAt;
  final Value<DateTime?> doneAt;
  final Value<DateTime?> createdAt;
  const ReminderTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.place = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.startAt = const Value.absent(),
    this.endAt = const Value.absent(),
    this.doneAt = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ReminderTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.description = const Value.absent(),
    required ReminderType type,
    this.place = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    required DateTime startAt,
    this.endAt = const Value.absent(),
    this.doneAt = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : title = Value(title),
       type = Value(type),
       startAt = Value(startAt);
  static Insertable<ReminderTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? type,
    Expression<String>? place,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<DateTime>? startAt,
    Expression<DateTime>? endAt,
    Expression<DateTime>? doneAt,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (place != null) 'place': place,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (startAt != null) 'start_at': startAt,
      if (endAt != null) 'end_at': endAt,
      if (doneAt != null) 'done_at': doneAt,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ReminderTableCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String?>? description,
    Value<ReminderType>? type,
    Value<String?>? place,
    Value<double?>? latitude,
    Value<double?>? longitude,
    Value<DateTime>? startAt,
    Value<DateTime?>? endAt,
    Value<DateTime?>? doneAt,
    Value<DateTime?>? createdAt,
  }) {
    return ReminderTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      place: place ?? this.place,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      doneAt: doneAt ?? this.doneAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
        $ReminderTableTable.$convertertype.toSql(type.value),
      );
    }
    if (place.present) {
      map['place'] = Variable<String>(place.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (endAt.present) {
      map['end_at'] = Variable<DateTime>(endAt.value);
    }
    if (doneAt.present) {
      map['done_at'] = Variable<DateTime>(doneAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReminderTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('place: $place, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('doneAt: $doneAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ReminderTableTable reminderTable = $ReminderTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [reminderTable];
}

typedef $$ReminderTableTableCreateCompanionBuilder =
    ReminderTableCompanion Function({
      Value<int> id,
      required String title,
      Value<String?> description,
      required ReminderType type,
      Value<String?> place,
      Value<double?> latitude,
      Value<double?> longitude,
      required DateTime startAt,
      Value<DateTime?> endAt,
      Value<DateTime?> doneAt,
      Value<DateTime?> createdAt,
    });
typedef $$ReminderTableTableUpdateCompanionBuilder =
    ReminderTableCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String?> description,
      Value<ReminderType> type,
      Value<String?> place,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<DateTime> startAt,
      Value<DateTime?> endAt,
      Value<DateTime?> doneAt,
      Value<DateTime?> createdAt,
    });

class $$ReminderTableTableFilterComposer
    extends Composer<_$AppDatabase, $ReminderTableTable> {
  $$ReminderTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<ReminderType, ReminderType, String> get type =>
      $composableBuilder(
        column: $table.type,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<String> get place => $composableBuilder(
    column: $table.place,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startAt => $composableBuilder(
    column: $table.startAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endAt => $composableBuilder(
    column: $table.endAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get doneAt => $composableBuilder(
    column: $table.doneAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ReminderTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ReminderTableTable> {
  $$ReminderTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get place => $composableBuilder(
    column: $table.place,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startAt => $composableBuilder(
    column: $table.startAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endAt => $composableBuilder(
    column: $table.endAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get doneAt => $composableBuilder(
    column: $table.doneAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ReminderTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReminderTableTable> {
  $$ReminderTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<ReminderType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get place =>
      $composableBuilder(column: $table.place, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<DateTime> get startAt =>
      $composableBuilder(column: $table.startAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endAt =>
      $composableBuilder(column: $table.endAt, builder: (column) => column);

  GeneratedColumn<DateTime> get doneAt =>
      $composableBuilder(column: $table.doneAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ReminderTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReminderTableTable,
          ReminderTableData,
          $$ReminderTableTableFilterComposer,
          $$ReminderTableTableOrderingComposer,
          $$ReminderTableTableAnnotationComposer,
          $$ReminderTableTableCreateCompanionBuilder,
          $$ReminderTableTableUpdateCompanionBuilder,
          (
            ReminderTableData,
            BaseReferences<
              _$AppDatabase,
              $ReminderTableTable,
              ReminderTableData
            >,
          ),
          ReminderTableData,
          PrefetchHooks Function()
        > {
  $$ReminderTableTableTableManager(_$AppDatabase db, $ReminderTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReminderTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReminderTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReminderTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<ReminderType> type = const Value.absent(),
                Value<String?> place = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<DateTime> startAt = const Value.absent(),
                Value<DateTime?> endAt = const Value.absent(),
                Value<DateTime?> doneAt = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
              }) => ReminderTableCompanion(
                id: id,
                title: title,
                description: description,
                type: type,
                place: place,
                latitude: latitude,
                longitude: longitude,
                startAt: startAt,
                endAt: endAt,
                doneAt: doneAt,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                Value<String?> description = const Value.absent(),
                required ReminderType type,
                Value<String?> place = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                required DateTime startAt,
                Value<DateTime?> endAt = const Value.absent(),
                Value<DateTime?> doneAt = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
              }) => ReminderTableCompanion.insert(
                id: id,
                title: title,
                description: description,
                type: type,
                place: place,
                latitude: latitude,
                longitude: longitude,
                startAt: startAt,
                endAt: endAt,
                doneAt: doneAt,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ReminderTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReminderTableTable,
      ReminderTableData,
      $$ReminderTableTableFilterComposer,
      $$ReminderTableTableOrderingComposer,
      $$ReminderTableTableAnnotationComposer,
      $$ReminderTableTableCreateCompanionBuilder,
      $$ReminderTableTableUpdateCompanionBuilder,
      (
        ReminderTableData,
        BaseReferences<_$AppDatabase, $ReminderTableTable, ReminderTableData>,
      ),
      ReminderTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ReminderTableTableTableManager get reminderTable =>
      $$ReminderTableTableTableManager(_db, _db.reminderTable);
}
