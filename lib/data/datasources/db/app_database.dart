import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

@DataClassName('TodoEntry')
class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get title => text()();
  BoolColumn get completed => boolean()();
}

// In this case the db is created in memory every time you run the app,
// so the data will not be persistent.
//
// @DriftDatabase(tables: [Todos])
// class AppDatabase extends _$AppDatabase {
//   AppDatabase() : super(NativeDatabase.memory());

//   @override
//   int get schemaVersion => 1;
// }

@DriftDatabase(tables: [Todos])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.executor);

  @override
  int get schemaVersion => 1;
}

// method to get an istance of AppDatabase
Future<AppDatabase> getAppDatabase() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  final file = File(p.join(dbFolder.path, 'app.db'));
  final executor = NativeDatabase(file);

  return AppDatabase(executor);
}
