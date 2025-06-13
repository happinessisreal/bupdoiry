import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';

Future plusicon(BuildContext context) async {
  await UserprofileTable().insert({
    'id': '',
    'entryid': '',
  });

  context.pushNamed(EntryPageWidget.routeName);
}
