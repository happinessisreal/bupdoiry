import '/flutter_flow/flutter_flow_util.dart';
import 'chat_bot_widget.dart' show ChatBotWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ChatBotModel extends FlutterFlowModel<ChatBotWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
