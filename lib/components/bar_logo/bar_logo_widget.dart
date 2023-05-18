import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bar_logo_model.dart';
export 'bar_logo_model.dart';

class BarLogoWidget extends StatefulWidget {
  const BarLogoWidget({Key? key}) : super(key: key);

  @override
  _BarLogoWidgetState createState() => _BarLogoWidgetState();
}

class _BarLogoWidgetState extends State<BarLogoWidget> {
  late BarLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarLogoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        if (!(Theme.of(context).brightness == Brightness.dark))
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: Image.asset(
              'assets/images/health-ai_logoHorz_dark@3x.png',
              width: 120.0,
              height: 40.0,
              fit: BoxFit.fitWidth,
            ),
          ),
        if (Theme.of(context).brightness == Brightness.dark)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: Image.asset(
              'assets/images/health-ai_logoHorz.png',
              width: 120.0,
              height: 40.0,
              fit: BoxFit.fitWidth,
            ),
          ),
      ],
    );
  }
}
