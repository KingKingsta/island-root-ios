import '/components/order_status_card/order_status_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TabProfilePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for orderStatusCard component.
  late OrderStatusCardModel orderStatusCardModel1;
  // Model for orderStatusCard component.
  late OrderStatusCardModel orderStatusCardModel2;
  // Model for orderStatusCard component.
  late OrderStatusCardModel orderStatusCardModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    orderStatusCardModel1 = createModel(context, () => OrderStatusCardModel());
    orderStatusCardModel2 = createModel(context, () => OrderStatusCardModel());
    orderStatusCardModel3 = createModel(context, () => OrderStatusCardModel());
  }

  void dispose() {
    orderStatusCardModel1.dispose();
    orderStatusCardModel2.dispose();
    orderStatusCardModel3.dispose();
  }

  /// Additional helper methods are added here.

}
