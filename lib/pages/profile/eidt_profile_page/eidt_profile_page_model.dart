import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EidtProfilePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress-login widget.
  TextEditingController? emailAddressLoginController1;
  String? Function(BuildContext, String?)?
      emailAddressLoginController1Validator;
  // State field(s) for emailAddress-login widget.
  TextEditingController? emailAddressLoginController2;
  String? Function(BuildContext, String?)?
      emailAddressLoginController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailAddressLoginController1?.dispose();
    emailAddressLoginController2?.dispose();
  }

  /// Additional helper methods are added here.

}
