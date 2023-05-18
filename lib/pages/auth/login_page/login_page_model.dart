import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress-login widget.
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for password-login widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  // State field(s) for fullName-register widget.
  TextEditingController? fullNameRegisterController;
  String? Function(BuildContext, String?)? fullNameRegisterControllerValidator;
  // State field(s) for emailAddress-register widget.
  TextEditingController? emailAddressRegisterController;
  String? Function(BuildContext, String?)?
      emailAddressRegisterControllerValidator;
  // State field(s) for password-register widget.
  TextEditingController? passwordRegisterController;
  late bool passwordRegisterVisibility;
  String? Function(BuildContext, String?)? passwordRegisterControllerValidator;
  // State field(s) for confirmPassword-register widget.
  TextEditingController? confirmPasswordRegisterController;
  late bool confirmPasswordRegisterVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordRegisterControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginVisibility = false;
    passwordRegisterVisibility = false;
    confirmPasswordRegisterVisibility = false;
  }

  void dispose() {
    emailAddressLoginController?.dispose();
    passwordLoginController?.dispose();
    fullNameRegisterController?.dispose();
    emailAddressRegisterController?.dispose();
    passwordRegisterController?.dispose();
    confirmPasswordRegisterController?.dispose();
  }

  /// Additional helper methods are added here.

}
