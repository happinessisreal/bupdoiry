import '/flutter_flow/flutter_flow_util.dart';
import 'chattingpage_widget.dart' show ChattingpageWidget;
import 'package:flutter/material.dart';

class ChattingpageModel extends FlutterFlowModel<ChattingpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in IconButton widget.
  String? aioutputofgemini;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
