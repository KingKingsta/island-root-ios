import '/components/menu/tab_bar_menu/tab_bar_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'light_white_button_model.dart';
export 'light_white_button_model.dart';

class LightWhiteButtonWidget extends StatefulWidget {
  const LightWhiteButtonWidget({
    Key? key,
    this.buttonTitle,
  }) : super(key: key);

  final String? buttonTitle;

  @override
  _LightWhiteButtonWidgetState createState() => _LightWhiteButtonWidgetState();
}

class _LightWhiteButtonWidgetState extends State<LightWhiteButtonWidget> {
  late LightWhiteButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LightWhiteButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.75),
      child: FFButtonWidget(
        onPressed: () async {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Color(0x03FFFFFF),
            context: context,
            builder: (bottomSheetContext) {
              return Padding(
                padding: MediaQuery.of(bottomSheetContext).viewInsets,
                child: Container(
                  height: 850.0,
                  child: TabBarMenuWidget(),
                ),
              );
            },
          ).then((value) => setState(() {}));
        },
        text: widget.buttonTitle!,
        options: FFButtonOptions(
          width: 130.0,
          height: 40.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Color(0x33FFFFFF),
          textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).alternate,
                letterSpacing: 0.25,
                fontWeight: FontWeight.w600,
              ),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
