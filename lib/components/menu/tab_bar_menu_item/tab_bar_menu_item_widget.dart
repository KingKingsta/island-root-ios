import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tab_bar_menu_item_model.dart';
export 'tab_bar_menu_item_model.dart';

class TabBarMenuItemWidget extends StatefulWidget {
  const TabBarMenuItemWidget({
    Key? key,
    this.itemName,
  }) : super(key: key);

  final String? itemName;

  @override
  _TabBarMenuItemWidgetState createState() => _TabBarMenuItemWidgetState();
}

class _TabBarMenuItemWidgetState extends State<TabBarMenuItemWidget> {
  late TabBarMenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabBarMenuItemModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 1.0,
              color: Color(0x26000000),
              offset: Offset(0.0, 1.0),
            )
          ],
          gradient: LinearGradient(
            colors: [Color(0x98F1F1F1), Color(0xA9FFFFFF)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.transparent,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 8.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.itemName!,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: FlutterFlowTheme.of(context).alternate,
                size: 36.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
