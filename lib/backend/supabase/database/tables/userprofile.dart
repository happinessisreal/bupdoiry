import '../database.dart';

class UserprofileTable extends SupabaseTable<UserprofileRow> {
  @override
  String get tableName => 'Userprofile';

  @override
  UserprofileRow createRow(Map<String, dynamic> data) => UserprofileRow(data);
}

class UserprofileRow extends SupabaseDataRow {
  UserprofileRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserprofileTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('Title');
  set title(String? value) => setField<String>('Title', value);

  String? get content => getField<String>('Content');
  set content(String? value) => setField<String>('Content', value);

  String? get attachment => getField<String>('Attachment');
  set attachment(String? value) => setField<String>('Attachment', value);

  String? get mood => getField<String>('Mood');
  set mood(String? value) => setField<String>('Mood', value);

  String get entryid => getField<String>('entryid')!;
  set entryid(String value) => setField<String>('entryid', value);

  String? get date => getField<String>('Date');
  set date(String? value) => setField<String>('Date', value);
}
