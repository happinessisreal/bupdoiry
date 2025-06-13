import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p1_to_p_widget.dart' show P1ToPWidget;
import 'package:flutter/material.dart';

class P1ToPModel extends FlutterFlowModel<P1ToPWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
