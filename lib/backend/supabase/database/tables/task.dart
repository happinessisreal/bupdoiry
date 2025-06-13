import '../database.dart';

class TaskTable extends SupabaseTable<TaskRow> {
  @override
  String get tableName => 'Task';

  @override
  TaskRow createRow(Map<String, dynamic> data) => TaskRow(data);
}

class TaskRow extends SupabaseDataRow {
  TaskRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tasks => getField<String>('Tasks');
  set tasks(String? value) => setField<String>('Tasks', value);

  bool? get status => getField<bool>('Status');
  set status(bool? value) => setField<bool>('Status', value);

  int? get value => getField<int>('Value');
  set value(int? value) => setField<int>('Value', value);

  String get taskid => getField<String>('taskid')!;
  set taskid(String value) => setField<String>('taskid', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
