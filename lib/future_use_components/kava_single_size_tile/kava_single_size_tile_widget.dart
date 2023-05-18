import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'kava_single_size_tile_model.dart';
export 'kava_single_size_tile_model.dart';

class KavaSingleSizeTileWidget extends StatefulWidget {
  const KavaSingleSizeTileWidget({
    Key? key,
    String? size,
    required this.price,
  })  : this.size = size ?? 'Single',
        super(key: key);

  final String size;
  final int? price;

  @override
  _KavaSingleSizeTileWidgetState createState() =>
      _KavaSingleSizeTileWidgetState();
}

class _KavaSingleSizeTileWidgetState extends State<KavaSingleSizeTileWidget> {
  late KavaSingleSizeTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KavaSingleSizeTileModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          final _colorPickedColor = await showFFColorPicker(
            context,
            currentColor: _model.colorPicked ??=
                FlutterFlowTheme.of(context).primary,
            showRecentColors: true,
            allowOpacity: true,
            textColor: FlutterFlowTheme.of(context).primaryText,
            secondaryTextColor: FlutterFlowTheme.of(context).secondaryText,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            primaryButtonBackgroundColor: FlutterFlowTheme.of(context).primary,
            primaryButtonTextColor: Colors.white,
            primaryButtonBorderColor: Colors.transparent,
            displayAsBottomSheet: isMobileWidth(context),
          );

          if (_colorPickedColor != null) {
            setState(() => _model.colorPicked = _colorPickedColor);
          }
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 150),
          curve: Curves.easeIn,
          width: 160.0,
          height: 130.0,
          decoration: BoxDecoration(
            color: Color(0x4CFFFFFF),
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x34090F13),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0xA5FFFFFF),
              width: 1.5,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: SvgPicture.asset(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'assets/images/Frame_39.svg'
                            : 'assets/images/kavaShellIcon.svg',
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.size,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          formatNumber(
                            widget.price,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                            currency: '\$',
                          ),
                          '6.00',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
