import '/components/menu/tab_bar_menu_item/tab_bar_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tab_bar_menu_model.dart';
export 'tab_bar_menu_model.dart';

class TabBarMenuWidget extends StatefulWidget {
  const TabBarMenuWidget({
    Key? key,
    this.menuSection,
  }) : super(key: key);

  final String? menuSection;

  @override
  _TabBarMenuWidgetState createState() => _TabBarMenuWidgetState();
}

class _TabBarMenuWidgetState extends State<TabBarMenuWidget> {
  late TabBarMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabBarMenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Container(
                                      width: 50.0,
                                      height: 4.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 16.0, 16.0, 6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Kava',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.close,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 700.0,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 32.0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel3,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel4,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel5,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel6,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel7,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel8,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.tabBarMenuItemModel9,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: TabBarMenuItemWidget(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Container(
                                          width: 50.0,
                                          height: 4.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              widget.menuSection!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 700.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 32.0),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel10,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel11,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel12,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel13,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel14,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel15,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel16,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel17,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .tabBarMenuItemModel18,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TabBarMenuItemWidget(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: false,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.2,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.2,
                                ),
                        labelColor: FlutterFlowTheme.of(context).alternate,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).alternate,
                        backgroundColor: Color(0x3FFFFFFF),
                        borderWidth: 0.0,
                        borderRadius: 0.0,
                        elevation: 0.0,
                        tabs: [
                          Tab(
                            text: widget.menuSection!,
                          ),
                          Tab(
                            text: widget.menuSection!,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
