import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/future_use_components/light_white_button/light_white_button_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandingPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for lightWhiteButton component.
  late LightWhiteButtonModel lightWhiteButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    lightWhiteButtonModel = createModel(context, () => LightWhiteButtonModel());
  }

  void dispose() {
    lightWhiteButtonModel.dispose();
  }

  /// Additional helper methods are added here.

}
