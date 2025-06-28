import '../database.dart';

class ConversationTable extends SupabaseTable<ConversationRow> {
  @override
  String get tableName => 'conversation';

  @override
  ConversationRow createRow(Map<String, dynamic> data) => ConversationRow(data);
}

class ConversationRow extends SupabaseDataRow {
  ConversationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConversationTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userid => getField<String>('userid')!;
  set userid(String value) => setField<String>('userid', value);

  int? get turnnumber => getField<int>('turnnumber');
  set turnnumber(int? value) => setField<int>('turnnumber', value);

  String? get msg => getField<String>('msg');
  set msg(String? value) => setField<String>('msg', value);

  bool? get isuser => getField<bool>('isuser');
  set isuser(bool? value) => setField<bool>('isuser', value);
}
