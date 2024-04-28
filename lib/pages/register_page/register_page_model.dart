import '/flutter_flow/flutter_flow_util.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // State field(s) for ConfirmPasswrodTextField widget.
  FocusNode? confirmPasswrodTextFieldFocusNode;
  TextEditingController? confirmPasswrodTextFieldTextController;
  late bool confirmPasswrodTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswrodTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
    confirmPasswrodTextFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    confirmPasswrodTextFieldFocusNode?.dispose();
    confirmPasswrodTextFieldTextController?.dispose();
  }
}
