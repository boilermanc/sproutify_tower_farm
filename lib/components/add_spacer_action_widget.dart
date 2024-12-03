import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/spacer_count_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_spacer_action_model.dart';
export 'add_spacer_action_model.dart';

class AddSpacerActionWidget extends StatefulWidget {
  const AddSpacerActionWidget({
    super.key,
    required this.spacerCount,
  });

  final int? spacerCount;

  @override
  State<AddSpacerActionWidget> createState() => _AddSpacerActionWidgetState();
}

class _AddSpacerActionWidgetState extends State<AddSpacerActionWidget> {
  late AddSpacerActionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddSpacerActionModel());

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Container(
                            width: 550.0,
                            height: 800.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Icon(
                                            Icons.spa,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Add Spacer Tray',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderRadius: 8.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          icon: Icon(
                                            Icons.arrow_back,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                    FutureBuilder<List<FarmPlantsViewRow>>(
                                      future: FarmPlantsViewTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'farm_id',
                                              FFAppState().farmID,
                                            )
                                            .order('plant_name',
                                                ascending: true),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<FarmPlantsViewRow>
                                            farmCatalogContainerFarmPlantsViewRowList =
                                            snapshot.data!;

                                        return Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final plantCatalogExpandable =
                                                      farmCatalogContainerFarmPlantsViewRowList
                                                          .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        plantCatalogExpandable
                                                            .length,
                                                    itemBuilder: (context,
                                                        plantCatalogExpandableIndex) {
                                                      final plantCatalogExpandableItem =
                                                          plantCatalogExpandable[
                                                              plantCatalogExpandableIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              color: Color(
                                                                  0x00000000),
                                                              child:
                                                                  ExpandableNotifier(
                                                                initialExpanded:
                                                                    false,
                                                                child:
                                                                    ExpandablePanel(
                                                                  header: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            plantCatalogExpandableItem.plantName,
                                                                            'Plant',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                color: Colors.black,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  collapsed:
                                                                      Container(),
                                                                  expanded:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 460.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFE5F3FD),
                                                                                    borderRadius: BorderRadius.circular(7.0),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.all(8.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsets.all(8.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Quantity to Space',
                                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            SpacerCountComponentWidget(
                                                                                              key: Key('Key1h0_${plantCatalogExpandableIndex}_of_${plantCatalogExpandable.length}'),
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
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 460.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFE5F3FD),
                                                                                      borderRadius: BorderRadius.circular(7.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(8.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsets.all(8.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Seeded Date',
                                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 400.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsets.all(12.0),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          dateTimeFormat("MMMEd", _model.datePicked1),
                                                                                                          'mm/dd/yyyy',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 16.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                            ),
                                                                                                      ),
                                                                                                      InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          final _datePicked1Date = await showDatePicker(
                                                                                                            context: context,
                                                                                                            initialDate: getCurrentTimestamp,
                                                                                                            firstDate: DateTime(1900),
                                                                                                            lastDate: getCurrentTimestamp,
                                                                                                            builder: (context, child) {
                                                                                                              return wrapInMaterialDatePickerTheme(
                                                                                                                context,
                                                                                                                child!,
                                                                                                                headerBackgroundColor: Color(0xFF63BFE5),
                                                                                                                headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                      fontFamily: 'Outfit',
                                                                                                                      fontSize: 32.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                    ),
                                                                                                                pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                iconSize: 24.0,
                                                                                                              );
                                                                                                            },
                                                                                                          );

                                                                                                          if (_datePicked1Date != null) {
                                                                                                            safeSetState(() {
                                                                                                              _model.datePicked1 = DateTime(
                                                                                                                _datePicked1Date.year,
                                                                                                                _datePicked1Date.month,
                                                                                                                _datePicked1Date.day,
                                                                                                              );
                                                                                                            });
                                                                                                          }
                                                                                                        },
                                                                                                        child: Icon(
                                                                                                          Icons.calendar_month,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          size: 24.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
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
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 460.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFE5F3FD),
                                                                                      borderRadius: BorderRadius.circular(7.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(8.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsets.all(8.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Expected Ready Date',
                                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 400.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsets.all(12.0),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          dateTimeFormat("MMMEd", _model.datePicked2),
                                                                                                          'mm/dd/yyyy',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 16.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                            ),
                                                                                                      ),
                                                                                                      InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          final _datePicked2Date = await showDatePicker(
                                                                                                            context: context,
                                                                                                            initialDate: getCurrentTimestamp,
                                                                                                            firstDate: getCurrentTimestamp,
                                                                                                            lastDate: DateTime(2050),
                                                                                                            builder: (context, child) {
                                                                                                              return wrapInMaterialDatePickerTheme(
                                                                                                                context,
                                                                                                                child!,
                                                                                                                headerBackgroundColor: Color(0xFF63BFE5),
                                                                                                                headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                      fontFamily: 'Outfit',
                                                                                                                      fontSize: 32.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                    ),
                                                                                                                pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                iconSize: 24.0,
                                                                                                              );
                                                                                                            },
                                                                                                          );

                                                                                                          if (_datePicked2Date != null) {
                                                                                                            safeSetState(() {
                                                                                                              _model.datePicked2 = DateTime(
                                                                                                                _datePicked2Date.year,
                                                                                                                _datePicked2Date.month,
                                                                                                                _datePicked2Date.day,
                                                                                                              );
                                                                                                            });
                                                                                                          }
                                                                                                        },
                                                                                                        child: Icon(
                                                                                                          Icons.calendar_month,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          size: 24.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
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
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 460.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFE5F3FD),
                                                                                      borderRadius: BorderRadius.circular(7.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(8.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsets.all(8.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Date Spaced',
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
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 400.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsets.all(12.0),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          dateTimeFormat("MMMEd", _model.datePicked3),
                                                                                                          'mm/dd/yyyy',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              fontSize: 16.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                            ),
                                                                                                      ),
                                                                                                      InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          final _datePicked3Date = await showDatePicker(
                                                                                                            context: context,
                                                                                                            initialDate: getCurrentTimestamp,
                                                                                                            firstDate: DateTime(1900),
                                                                                                            lastDate: getCurrentTimestamp,
                                                                                                            builder: (context, child) {
                                                                                                              return wrapInMaterialDatePickerTheme(
                                                                                                                context,
                                                                                                                child!,
                                                                                                                headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                      fontFamily: 'Outfit',
                                                                                                                      fontSize: 32.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                    ),
                                                                                                                pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                                selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                                actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                                iconSize: 24.0,
                                                                                                              );
                                                                                                            },
                                                                                                          );

                                                                                                          if (_datePicked3Date != null) {
                                                                                                            safeSetState(() {
                                                                                                              _model.datePicked3 = DateTime(
                                                                                                                _datePicked3Date.year,
                                                                                                                _datePicked3Date.month,
                                                                                                                _datePicked3Date.day,
                                                                                                              );
                                                                                                            });
                                                                                                          }
                                                                                                        },
                                                                                                        child: Icon(
                                                                                                          Icons.calendar_month,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          size: 24.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
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
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 460.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFE5F3FD),
                                                                                      borderRadius: BorderRadius.circular(7.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(8.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                            children: [
                                                                                              FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  await ActionsTable().insert({
                                                                                                    'action_type_id': 9,
                                                                                                    'plant_id': plantCatalogExpandableItem.plantId,
                                                                                                    'quantity': FFAppState().spacerPlantCount,
                                                                                                    'action_date': supaSerialize<DateTime>(_model.datePicked3),
                                                                                                    'farm_id': FFAppState().farmID,
                                                                                                    'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                                    'updated_at': supaSerialize<DateTime>(_model.datePicked3),
                                                                                                    'seeded_date': supaSerialize<DateTime>(_model.datePicked1),
                                                                                                    'user_id': currentUserUid,
                                                                                                    'expected_ready_date': supaSerialize<DateTime>(_model.datePicked2),
                                                                                                  });
                                                                                                  FFAppState().spacerPlantCount = 44;
                                                                                                  safeSetState(() {});
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return Padding(
                                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                                        child: AddSpacerActionWidget(
                                                                                                          spacerCount: 1,
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                },
                                                                                                text: 'Create and Add Another',
                                                                                                options: FFButtonOptions(
                                                                                                  height: 44.0,
                                                                                                  padding: EdgeInsets.all(7.0),
                                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                  elevation: 0.0,
                                                                                                ),
                                                                                              ),
                                                                                              FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  await ActionsTable().insert({
                                                                                                    'action_type_id': 9,
                                                                                                    'plant_id': plantCatalogExpandableItem.plantId,
                                                                                                    'quantity': FFAppState().spacerPlantCount,
                                                                                                    'action_date': supaSerialize<DateTime>(_model.datePicked3),
                                                                                                    'farm_id': FFAppState().farmID,
                                                                                                    'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                                    'updated_at': supaSerialize<DateTime>(_model.datePicked3),
                                                                                                    'seeded_date': supaSerialize<DateTime>(_model.datePicked1),
                                                                                                    'user_id': currentUserUid,
                                                                                                    'expected_ready_date': supaSerialize<DateTime>(_model.datePicked2),
                                                                                                  });
                                                                                                  FFAppState().spacerPlantCount = 44;
                                                                                                  safeSetState(() {});
                                                                                                  Navigator.pop(context);
                                                                                                },
                                                                                                text: 'Add Spacer',
                                                                                                options: FFButtonOptions(
                                                                                                  width: 150.0,
                                                                                                  height: 44.0,
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                  elevation: 0.0,
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(SizedBox(width: 16.0)),
                                                                                          ),
                                                                                        ],
                                                                                      ),
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
                                                                  theme:
                                                                      ExpandableThemeData(
                                                                    tapHeaderToExpand:
                                                                        true,
                                                                    tapBodyToExpand:
                                                                        true,
                                                                    tapBodyToCollapse:
                                                                        false,
                                                                    headerAlignment:
                                                                        ExpandablePanelHeaderAlignment
                                                                            .center,
                                                                    hasIcon:
                                                                        true,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
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
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: Text(
            'Expected Ready Date',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
