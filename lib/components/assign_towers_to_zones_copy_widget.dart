import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'assign_towers_to_zones_copy_model.dart';
export 'assign_towers_to_zones_copy_model.dart';

class AssignTowersToZonesCopyWidget extends StatefulWidget {
  const AssignTowersToZonesCopyWidget({
    super.key,
    this.parameter1,
    this.parameter2,
  });

  final List<String>? parameter1;
  final int? parameter2;

  @override
  State<AssignTowersToZonesCopyWidget> createState() =>
      _AssignTowersToZonesCopyWidgetState();
}

class _AssignTowersToZonesCopyWidgetState
    extends State<AssignTowersToZonesCopyWidget> {
  late AssignTowersToZonesCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignTowersToZonesCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.towerListForZone7722 = await TowerViewTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'farm_id',
              FFAppState().farmID,
            )
            .order('tower_identifier', ascending: true),
      );
      _model.towerDraggableList = _model.towerListForZone7722!
          .map((e) => e.towerIdentifier)
          .withoutNulls
          .toList()
          .toList()
          .cast<String>();
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              'Select Zone',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Container(
                            width: 624.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: FutureBuilder<
                                List<LightingZonesWithControllerRow>>(
                              future:
                                  LightingZonesWithControllerTable().queryRows(
                                queryFn: (q) => q.eqOrNull(
                                  'farm_id',
                                  FFAppState().farmID,
                                ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<LightingZonesWithControllerRow>
                                    listViewLightingZonesWithControllerRowList =
                                    snapshot.data!;

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      listViewLightingZonesWithControllerRowList
                                          .length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewLightingZonesWithControllerRow =
                                        listViewLightingZonesWithControllerRowList[
                                            listViewIndex];
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              FFAppState().zoneSelected =
                                                  !(FFAppState().zoneSelected ??
                                                      true);
                                              safeSetState(() {});
                                              if (FFAppState().zoneSelected) {
                                                // zoneTrue
                                                FFAppState().selectedZoneName =
                                                    listViewLightingZonesWithControllerRow
                                                        .zoneName!;
                                                FFAppState()
                                                        .selectedTowerZoneID =
                                                    listViewLightingZonesWithControllerRow
                                                        .zoneId!;
                                                safeSetState(() {});
                                              } else {
                                                // zoneFalse
                                                FFAppState().selectedZoneName =
                                                    '';
                                                safeSetState(() {});
                                              }
                                            },
                                            text:
                                                listViewLightingZonesWithControllerRow
                                                    .zoneName!,
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  listViewLightingZonesWithControllerRow.zoneId ==
                                                          FFAppState()
                                                              .selectedTowerZoneID
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondary
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).primary,
                            icon: Icon(
                              Icons.arrow_back,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (FFAppState().zoneSelected == true)
                              Text(
                                'Assign Towers to ',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            Text(
                              FFAppState().selectedZoneName,
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (FFAppState().selectedZoneName != null &&
                              FFAppState().selectedZoneName != '')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 1066.0,
                                height: 668.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 200.0,
                                              height: 633.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(5.0),
                                                        child: Container(
                                                          width: 120.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: DragTarget<
                                                              String>(
                                                            onAcceptWithDetails:
                                                                (details) async {
                                                              _model
                                                                  .addToTowerDraggableList(
                                                                      details
                                                                          .data);
                                                              _model
                                                                  .removeFromDraggedTowers(
                                                                      details
                                                                          .data);
                                                              safeSetState(
                                                                  () {});

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            builder: (context,
                                                                _, __) {
                                                              return Builder(
                                                                builder:
                                                                    (context) {
                                                                  final draggableTowerList = _model
                                                                      .towerDraggableList
                                                                      .toList();

                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        draggableTowerList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            draggableTowerListIndex) {
                                                                      final draggableTowerListItem =
                                                                          draggableTowerList[
                                                                              draggableTowerListIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            1.0,
                                                                            5.0,
                                                                            1.0),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              30.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFECDB69),
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(10.0),
                                                                              bottomRight: Radius.circular(10.0),
                                                                              topLeft: Radius.circular(10.0),
                                                                              topRight: Radius.circular(10.0),
                                                                            ),
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Draggable<String>(
                                                                                data: draggableTowerListItem,
                                                                                feedback: Material(
                                                                                  type: MaterialType.transparency,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        draggableTowerListItem,
                                                                                        '0.00',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            fontSize: 18.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      draggableTowerListItem,
                                                                                      '0.00',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 18.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.arrow_back,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 200.0,
                                                height: 633.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: DragTarget<
                                                                String>(
                                                              onAcceptWithDetails:
                                                                  (details) async {
                                                                _model.addToDraggedTowers(
                                                                    valueOrDefault<
                                                                        String>(
                                                                  details.data,
                                                                  '0.00',
                                                                ));
                                                                _model.removeFromTowerDraggableList(
                                                                    details
                                                                        .data);
                                                                safeSetState(
                                                                    () {});

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              builder: (context,
                                                                  _, __) {
                                                                return Container(
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
                                                          child: Container(
                                                            width: 120.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final draggedTowerIdentifier =
                                                                    _model
                                                                        .draggedTowers
                                                                        .toList();

                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      draggedTowerIdentifier
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          draggedTowerIdentifierIndex) {
                                                                    final draggedTowerIdentifierItem =
                                                                        draggedTowerIdentifier[
                                                                            draggedTowerIdentifierIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          2.0,
                                                                          5.0,
                                                                          2.0),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            30.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF91CBC5),
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(10.0),
                                                                            bottomRight:
                                                                                Radius.circular(10.0),
                                                                            topLeft:
                                                                                Radius.circular(10.0),
                                                                            topRight:
                                                                                Radius.circular(10.0),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Draggable<String>(
                                                                              data: valueOrDefault<String>(
                                                                                draggedTowerIdentifierItem,
                                                                                '0.00',
                                                                              ),
                                                                              feedback: Material(
                                                                                type: MaterialType.transparency,
                                                                                child: Text(
                                                                                  draggedTowerIdentifierItem,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              child: Text(
                                                                                draggedTowerIdentifierItem,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 18.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  await LightingZoneTowersTable()
                                                      .update(
                                                    data: {
                                                      'zone_id': FFAppState()
                                                          .selectedTowerZoneID,
                                                      'zone_name': FFAppState()
                                                          .selectedZoneName,
                                                      'is_assigned': true,
                                                    },
                                                    matchingRows: (rows) => rows
                                                        .eqOrNull(
                                                          'farm_id',
                                                          FFAppState().farmID,
                                                        )
                                                        .inFilterOrNull(
                                                          'tower_identifier',
                                                          _model.draggedTowers,
                                                        ),
                                                  );
                                                  FFAppState().selectedZone =
                                                      '';
                                                  FFAppState()
                                                      .selectedZoneName = '';
                                                  FFAppState()
                                                      .selectedTowerZoneID = '';
                                                  safeSetState(() {});
                                                  Navigator.pop(context);
                                                },
                                                text: 'Submit',
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
            ),
          ],
        ),
      ],
    );
  }
}
