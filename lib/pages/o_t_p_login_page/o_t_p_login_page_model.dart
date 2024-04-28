import '/flutter_flow/flutter_flow_util.dart';
import 'o_t_p_login_page_widget.dart' show OTPLoginPageWidget;
import 'package:flutter/material.dart';

class OTPLoginPageModel extends FlutterFlowModel<OTPLoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - checkAuth] action in Button widget.
  bool? isSigned;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
