// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PersonDao? _personDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Person1` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `fName` TEXT NOT NULL, `lName` TEXT NOT NULL)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PersonDao get personDao {
    return _personDaoInstance ??= _$PersonDao(database, changeListener);
  }
}

class _$PersonDao extends PersonDao {
  _$PersonDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _person1InsertionAdapter = InsertionAdapter(
            database,
            'Person1',
            (Person1 item) => <String, Object?>{
                  'id': item.id,
                  'fName': item.fName,
                  'lName': item.lName
                }),
        _person1DeletionAdapter = DeletionAdapter(
            database,
            'Person1',
            ['id'],
            (Person1 item) => <String, Object?>{
                  'id': item.id,
                  'fName': item.fName,
                  'lName': item.lName
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Person1> _person1InsertionAdapter;

  final DeletionAdapter<Person1> _person1DeletionAdapter;

  @override
  Future<List<Person1>> findAllPerson() async {
    return _queryAdapter.queryList('Select * from Person1',
        mapper: (Map<String, Object?> row) => Person1(
            id: row['id'] as int?,
            fName: row['fName'] as String,
            lName: row['lName'] as String));
  }

  @override
  Future<Person1?> findPerson(String fName) async {
    return _queryAdapter.query('Select * from Person1 Where fName= ?1',
        mapper: (Map<String, Object?> row) => Person1(
            id: row['id'] as int?,
            fName: row['fName'] as String,
            lName: row['lName'] as String),
        arguments: [fName]);
  }

  @override
  Future<Person1?> updatePerson(
      String fName, String newfName, String newlName) async {
    return _queryAdapter.query(
        'Update Person1 set fName= ?2, lName= ?3 Where fName= ?1',
        mapper: (Map<String, Object?> row) => Person1(
            id: row['id'] as int?,
            fName: row['fName'] as String,
            lName: row['lName'] as String),
        arguments: [fName, newfName, newlName]);
  }

  @override
  Future<void> deletePerson(String fName) async {
    await _queryAdapter.queryNoReturn('Delete from Person1 where fName= ?1',
        arguments: [fName]);
  }

  @override
  Future<int> insertPerson(Person1 person) {
    return _person1InsertionAdapter.insertAndReturnId(
        person, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> insertAllaPerson(List<Person1> todo) {
    return _person1InsertionAdapter.insertListAndReturnIds(
        todo, OnConflictStrategy.abort);
  }

  @override
  Future<int> deleteAllPerson(List<Person1> list) {
    return _person1DeletionAdapter.deleteListAndReturnChangedRows(list);
  }
}
