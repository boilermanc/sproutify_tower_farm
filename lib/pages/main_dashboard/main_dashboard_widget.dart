import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/farm_cycles_widget.dart';
import '/components/side_nav_widget.dart';
import '/components/spacer_quantiry_text_field_widget.dart';
import '/components/test_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/produce_plants/add_harvest_basic/add_harvest_basic_widget.dart';
import '/produce_plants/confirm_tower_waste/confirm_tower_waste_widget.dart';
import '/produce_plants/plant_towers/plant_towers_widget.dart';
import '/registration_profile/initial_tower_setup/initial_tower_setup_widget.dart';
import '/spacer/add_spacer_action/add_spacer_action_widget.dart';
import '/spacer/confirm_spacer_ready/confirm_spacer_ready_widget.dart';
import '/spacer/confirm_spacer_waste/confirm_spacer_waste_widget.dart';
import '/sproutify_a_i/mcp_reponse_window/mcp_reponse_window_widget.dart';
import '/sproutify_a_i/sproutify_a_i/sproutify_a_i_widget.dart';
import '/sproutify_a_i/sproutify_a_i_m_c_p_copy/sproutify_a_i_m_c_p_copy_widget.dart';
import '/tasks/clean_complete_task/clean_complete_task_widget.dart';
import '/tasks/task_mark_completed/task_mark_completed_widget.dart';
import '/towers/add_initial_towers/add_initial_towers_widget.dart';
import '/towers/update_towers/update_towers_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'main_dashboard_model.dart';
export 'main_dashboard_model.dart';

class MainDashboardWidget extends StatefulWidget {
  const MainDashboardWidget({super.key});

  static String routeName = 'main_Dashboard';
  static String routePath = '/mainDashboard';

  @override
  State<MainDashboardWidget> createState() => _MainDashboardWidgetState();
}

class _MainDashboardWidgetState extends State<MainDashboardWidget>
    with TickerProviderStateMixin {
  late MainDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Set Loading and Nav
      FFAppState().isLoading = true;
      FFAppState().navOpen = true;
      if (!(FFAppState().farmID != null && FFAppState().farmID != '')) {
        _model.profileResponse0011 = await InitialFarmLoadTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'user_id',
            currentUserUid,
          ),
        );
        if (!_model.profileResponse0011!.firstOrNull!.needsSetup!) {
          // Farm ID
          FFAppState().farmID =
              _model.profileResponse0011!.firstOrNull!.farmId!;
          // Farm Name
          FFAppState().farmName =
              _model.profileResponse0011!.firstOrNull!.farmName!;
          // Farm Unit
          FFAppState().farmUnit =
              _model.profileResponse0011!.firstOrNull!.measurementSystem!;
          // First Name
          FFAppState().firstName =
              _model.profileResponse0011!.firstOrNull!.firstName!;
          // Last Name
          FFAppState().lastName = valueOrDefault<String>(
            _model.profileResponse0011?.firstOrNull?.lastName,
            'Farmer',
          );
          // Farm City
          FFAppState().farmCity =
              _model.profileResponse0011!.firstOrNull!.city!;
          // Lattitude
          FFAppState().farmLatitude =
              _model.profileResponse0011!.firstOrNull!.latitude!;
          // Longitude
          FFAppState().farmLongitude =
              _model.profileResponse0011!.firstOrNull!.longitude!;
          // Has Towers
          FFAppState().towersAreConfigured =
              _model.profileResponse0011!.firstOrNull!.hasTowers!;
          // Profile Image
          FFAppState().profileImage =
              _model.profileResponse0011!.firstOrNull!.profileImageUrl!;
          // Uses Lighting
          FFAppState().usesLighting =
              _model.profileResponse0011!.firstOrNull!.usesLighting!;
          // Has Vendors
          FFAppState().hasVendors =
              _model.profileResponse0011!.firstOrNull!.hasVendors!;
          // Has Plants
          FFAppState().hasPlants =
              _model.profileResponse0011!.firstOrNull!.hasPlants!;
          // farm image
          FFAppState().farmImage = valueOrDefault<String>(
            _model.profileResponse0011?.firstOrNull?.farmImageUrl,
            'https://rsndonfydqhykowljuyn.supabase.co/storage/v1/object/public/farmlogos/images/20250708_2047_Aeroponic%20Tower%20Farm_simple_compose_01jzpac92eff8vcf5c0qt3fpz5%20(1).png',
          );
          // has Chemicals
          FFAppState().hasChemicals =
              _model.profileResponse0011!.firstOrNull!.hasChemicals!;
          safeSetState(() {});
        }
        // Query Weather Logs
        _model.weatherData5533 = await WeatherLogsTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'farm_id',
            FFAppState().farmID,
          ),
        );
        // setFarmWeather
        FFAppState().farmTemp =
            _model.weatherData5533!.firstOrNull!.tempF!.toString();
        FFAppState().farmHumidity =
            _model.weatherData5533!.firstOrNull!.humidity!.toString();
        FFAppState().farmCondition =
            _model.weatherData5533!.firstOrNull!.conditions!;
        safeSetState(() {});
      }
      // Loading Set To False
      FFAppState().isLoading = false;
      safeSetState(() {});
    });

    _model.reportTextFieldTextController ??= TextEditingController();
    _model.reportTextFieldFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.searchTowerTextFieldTextController ??= TextEditingController();

    animationsMap.addAll({
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 3.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: Color(0xFF4B9AD4),
          elevation: 8.0,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return WebViewAware(
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: SproutifyAIWidget(),
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            child: Icon(
              Icons.spa,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: FFAppState().farmID != null && FFAppState().farmID != '',
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.sideNavModel,
                  updateCallback: () => safeSetState(() {}),
                  child: SideNavWidget(
                    selectedNav: 1,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 30.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              constraints: BoxConstraints(
                                maxWidth: 1400.0,
                              ),
                              decoration: BoxDecoration(),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 140.0,
                                        constraints: BoxConstraints(
                                          maxHeight: 140.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 4.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: FutureBuilder<
                                                      List<
                                                          FarmDashboardViewRow>>(
                                                    future:
                                                        FarmDashboardViewTable()
                                                            .querySingleRow(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'farm_id',
                                                        FFAppState().farmID,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<FarmDashboardViewRow>
                                                          listViewFarmDashboardViewRowList =
                                                          snapshot.data!;

                                                      final listViewFarmDashboardViewRow =
                                                          listViewFarmDashboardViewRowList
                                                                  .isNotEmpty
                                                              ? listViewFarmDashboardViewRowList
                                                                  .first
                                                              : null;

                                                      return ListView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        8.0,
                                                                        8.0),
                                                            child: Container(
                                                              width: 130.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFE0E3E7),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            12.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewFarmDashboardViewRow
                                                                            ?.towersStatusDisplay,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .displaySmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.outfit(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF14181B),
                                                                            fontSize:
                                                                                36.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).displaySmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return WebViewAware(
                                                                                  child: GestureDetector(
                                                                                    onTap: () {
                                                                                      FocusScope.of(context).unfocus();
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: InitialTowerSetupWidget(),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            'Active Towers',
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                  ),
                                                                                  color: Color(0xFF57636C),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        8.0,
                                                                        8.0),
                                                            child: Container(
                                                              width: 130.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFE0E3E7),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            12.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewFarmDashboardViewRow
                                                                            ?.dueTodayTasks
                                                                            ?.toString(),
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .displaySmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.outfit(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFFEE8B60),
                                                                            fontSize:
                                                                                36.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).displaySmall.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Today\'s Tasks',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              color: Color(0xFF57636C),
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          if (FFAppState()
                                                                  .usesLighting ==
                                                              true)
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          8.0),
                                                              child: Container(
                                                                width: 250.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0xFFE0E3E7),
                                                                    width: 2.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              9.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Light Status',
                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                  font: GoogleFonts.outfit(
                                                                                    fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                  ),
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                ),
                                                                          ),
                                                                          FlutterFlowIconButton(
                                                                            borderRadius:
                                                                                8.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.arrow_forward_ios,
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                MainLightManagementWidget.routeName,
                                                                                queryParameters: {
                                                                                  'selectedFixtureQuantity': serializeParam(
                                                                                    0,
                                                                                    ParamType.int,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Container(
                                                                              width: 200.0,
                                                                              height: 50.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: FutureBuilder<List<LatestLightStatusRow>>(
                                                                                future: LatestLightStatusTable().queryRows(
                                                                                  queryFn: (q) => q
                                                                                      .eqOrNull(
                                                                                        'farm_id',
                                                                                        FFAppState().farmID,
                                                                                      )
                                                                                      .order('zone_name', ascending: true),
                                                                                ),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        child: CircularProgressIndicator(
                                                                                          valueColor: AlwaysStoppedAnimation<Color>(
                                                                                            FlutterFlowTheme.of(context).primary,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  List<LatestLightStatusRow> listViewLatestLightStatusRowList = snapshot.data!;

                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    shrinkWrap: true,
                                                                                    scrollDirection: Axis.horizontal,
                                                                                    itemCount: listViewLatestLightStatusRowList.length,
                                                                                    itemBuilder: (context, listViewIndex) {
                                                                                      final listViewLatestLightStatusRow = listViewLatestLightStatusRowList[listViewIndex];
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 30.0,
                                                                                              height: 30.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: listViewLatestLightStatusRow.eventType == 'on' ? FlutterFlowTheme.of(context).warning : Color(0xFF151E35),
                                                                                                shape: BoxShape.circle,
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
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        16.0,
                                                                        8.0),
                                                            child: Container(
                                                              width: 250.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFE0E3E7),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            9.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'Mechanicals',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .headlineSmall
                                                                              .override(
                                                                                font: GoogleFonts.outfit(
                                                                                  fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                ),
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                              ),
                                                                        ),
                                                                        FlutterFlowIconButton(
                                                                          borderColor:
                                                                              Colors.transparent,
                                                                          borderRadius:
                                                                              8.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.arrow_forward_ios,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            context.pushNamed(MainMechanicalWidget.routeName);
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                50.0,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                ListView(
                                                                              padding: EdgeInsets.zero,
                                                                              shrinkWrap: true,
                                                                              scrollDirection: Axis.vertical,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Fans',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                                                                                      child: Container(
                                                                                        width: 15.0,
                                                                                        height: 15.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).warning,
                                                                                          shape: BoxShape.circle,
                                                                                        ),
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
                                                              ),
                                                            ),
                                                          ),
                                                        ],
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        constraints: BoxConstraints(
                                          maxHeight: 140.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(7.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              if (FFAppState()
                                                      .towersAreConfigured ==
                                                  true)
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              TestWidget(),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              },
                                                              child: Text(
                                                                'Quick Task',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .plusJakartaSans(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownValueController ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options: [
                                                              'Take Out Trash',
                                                              'Sweep Floor',
                                                              'Eat Brownies'
                                                            ],
                                                            onChanged: (val) =>
                                                                safeSetState(() =>
                                                                    _model.dropDownValue =
                                                                        val),
                                                            width: 200.0,
                                                            height: 40.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .plusJakartaSans(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            hintText:
                                                                'Select...',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            borderWidth: 1.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: false,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (FFAppState()
                                                      .towersAreConfigured ==
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    SproutifyAIMCPCopyWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Container(
                                                      width: 350.0,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(3.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                width: 300.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .reportTextFieldTextController,
                                                                  focusNode: _model
                                                                      .reportTextFieldFocusNode,
                                                                  onFieldSubmitted:
                                                                      (_) async {
                                                                    // The "chatHistory" is the generated JSON -- we send the whole chat history to AI in order for it to understand context.
                                                                    _model.apiMCPResponse3311 =
                                                                        await McpChatGroupGroup
                                                                            .sendFullPromptMCPCall
                                                                            .call(
                                                                      userMessage: _model
                                                                          .reportTextFieldTextController
                                                                          .text,
                                                                      farmID: FFAppState()
                                                                          .farmID,
                                                                      userID:
                                                                          currentUserUid,
                                                                    );

                                                                    if ((_model
                                                                            .apiMCPResponse3311
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      FFAppState()
                                                                              .mcpHtml =
                                                                          getJsonField(
                                                                        (_model.apiMCPResponse3311?.jsonBody ??
                                                                            ''),
                                                                        r'''$.widgetCode''',
                                                                      ).toString();
                                                                      FFAppState()
                                                                              .mcpIsLoading =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    } else {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Your request failed.',
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).error,
                                                                        ),
                                                                      );
                                                                    }

                                                                    await Future
                                                                        .delayed(
                                                                      Duration(
                                                                        milliseconds:
                                                                            800,
                                                                      ),
                                                                    );
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(context).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: McpReponseWindowWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));

                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .reportTextFieldTextController
                                                                          ?.clear();
                                                                    });

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.plusJakartaSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                    hintText:
                                                                        'Generate  Reports',
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.plusJakartaSans(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .plusJakartaSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  enableInteractiveSelection:
                                                                      true,
                                                                  validator: _model
                                                                      .reportTextFieldTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                // The "chatHistory" is the generated JSON -- we send the whole chat history to AI in order for it to understand context.
                                                                _model.apiMCPResponse3311Copy =
                                                                    await McpChatGroupGroup
                                                                        .sendFullPromptMCPCall
                                                                        .call(
                                                                  userMessage:
                                                                      _model
                                                                          .reportTextFieldTextController
                                                                          .text,
                                                                  farmID:
                                                                      FFAppState()
                                                                          .farmID,
                                                                  userID:
                                                                      currentUserUid,
                                                                );

                                                                if ((_model
                                                                        .apiMCPResponse3311Copy
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                          .mcpHtml =
                                                                      getJsonField(
                                                                    (_model.apiMCPResponse3311Copy
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.widgetCode''',
                                                                  ).toString();
                                                                  FFAppState()
                                                                          .mcpIsLoading =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Your request failed.',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                            ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .error,
                                                                    ),
                                                                  );
                                                                }

                                                                await Future
                                                                    .delayed(
                                                                  Duration(
                                                                    milliseconds:
                                                                        800,
                                                                  ),
                                                                );
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              McpReponseWindowWidget(),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));

                                                                safeSetState(
                                                                    () {
                                                                  _model
                                                                      .reportTextFieldTextController
                                                                      ?.clear();
                                                                });

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_forward,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              Stack(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  FFAppState()
                                                                      .farmCity,
                                                                  'City',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .plusJakartaSans(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Weather',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .plusJakartaSans(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .temperatureHigh,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 16.0,
                                                                ),
                                                              ),
                                                              Text(
                                                                FFAppState()
                                                                    .farmTemp,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .plusJakartaSans(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .water_drop,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 16.0,
                                                                ),
                                                              ),
                                                              Text(
                                                                FFAppState()
                                                                    .farmHumidity,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .plusJakartaSans(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '%',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .plusJakartaSans(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFAppState()
                                                                      .farmCondition,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .plusJakartaSans(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
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
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 12.0, 10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  12.0,
                                                                  24.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Towers',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .outfit(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF14181B),
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (FFAppState()
                                                                  .towersAreConfigured)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: UpdateTowersWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    text:
                                                                        'Manage Towers',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.plusJakartaSans(
                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                  .towersAreConfigured)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: FarmCyclesWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    text:
                                                                        'Farm Cycles',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.plusJakartaSans(
                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        if (FFAppState()
                                                                .towersAreConfigured ==
                                                            false)
                                                          Container(
                                                            width: 900.0,
                                                            height: 610.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .addInitialTowersModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        AddInitialTowersWidget(),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .towersAreConfigured ==
                                                            true)
                                                          Container(
                                                            width: 900.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    children: [
                                                                      Align(
                                                                        alignment: Alignment(
                                                                            0.0,
                                                                            0),
                                                                        child:
                                                                            FlutterFlowButtonTabBar(
                                                                          useToggleButtonStyle:
                                                                              true,
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                font: GoogleFonts.plusJakartaSans(
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                              ),
                                                                          unselectedLabelStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                font: GoogleFonts.plusJakartaSans(
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                              ),
                                                                          labelColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          unselectedLabelColor:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          backgroundColor:
                                                                              Color(0xFFE5F3FD),
                                                                          unselectedBackgroundColor:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          unselectedBorderColor:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          borderWidth:
                                                                              2.0,
                                                                          borderRadius:
                                                                              0.0,
                                                                          elevation:
                                                                              0.0,
                                                                          buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          tabs: [
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.format_list_bulleted_sharp,
                                                                                  ),
                                                                                ),
                                                                                Tab(
                                                                                  text: 'Towers',
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.grid_view,
                                                                                  ),
                                                                                ),
                                                                                Tab(
                                                                                  text: 'Spacer Management',
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.spa_rounded,
                                                                                  ),
                                                                                ),
                                                                                Tab(
                                                                                  text: 'Plant Breakdown',
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                          controller:
                                                                              _model.tabBarController,
                                                                          onTap:
                                                                              (i) async {
                                                                            [
                                                                              () async {},
                                                                              () async {},
                                                                              () async {}
                                                                            ][i]();
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            TabBarView(
                                                                          controller:
                                                                              _model.tabBarController,
                                                                          physics:
                                                                              const NeverScrollableScrollPhysics(),
                                                                          children: [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 250.0,
                                                                                          child: Autocomplete<String>(
                                                                                            initialValue: TextEditingValue(),
                                                                                            optionsBuilder: (textEditingValue) {
                                                                                              if (textEditingValue.text == '') {
                                                                                                return const Iterable<String>.empty();
                                                                                              }
                                                                                              return ['Option 1'].where((option) {
                                                                                                final lowercaseOption = option.toLowerCase();
                                                                                                return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                                              });
                                                                                            },
                                                                                            optionsViewBuilder: (context, onSelected, options) {
                                                                                              return AutocompleteOptionsList(
                                                                                                textFieldKey: _model.searchTowerTextFieldKey,
                                                                                                textController: _model.searchTowerTextFieldTextController!,
                                                                                                options: options.toList(),
                                                                                                onSelected: onSelected,
                                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                textHighlightStyle: TextStyle(),
                                                                                                elevation: 4.0,
                                                                                                optionBackgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                optionHighlightColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                maxHeight: 200.0,
                                                                                              );
                                                                                            },
                                                                                            onSelected: (String selection) {
                                                                                              safeSetState(() => _model.searchTowerTextFieldSelectedOption = selection);
                                                                                              FocusScope.of(context).unfocus();
                                                                                            },
                                                                                            fieldViewBuilder: (
                                                                                              context,
                                                                                              textEditingController,
                                                                                              focusNode,
                                                                                              onEditingComplete,
                                                                                            ) {
                                                                                              _model.searchTowerTextFieldFocusNode = focusNode;

                                                                                              _model.searchTowerTextFieldTextController = textEditingController;
                                                                                              return TextFormField(
                                                                                                key: _model.searchTowerTextFieldKey,
                                                                                                controller: textEditingController,
                                                                                                focusNode: focusNode,
                                                                                                onEditingComplete: onEditingComplete,
                                                                                                onChanged: (_) => EasyDebounce.debounce(
                                                                                                  '_model.searchTowerTextFieldTextController',
                                                                                                  Duration(milliseconds: 2000),
                                                                                                  () async {
                                                                                                    _model.selectedTower = _model.searchTowerTextFieldTextController.text;
                                                                                                    safeSetState(() {});
                                                                                                  },
                                                                                                ),
                                                                                                autofocus: false,
                                                                                                obscureText: false,
                                                                                                decoration: InputDecoration(
                                                                                                  isDense: true,
                                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                      ),
                                                                                                  hintText: 'Search Tower Number...',
                                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                        font: GoogleFonts.plusJakartaSans(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                      ),
                                                                                                  enabledBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  focusedBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  errorBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  filled: true,
                                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  suffixIcon: _model.searchTowerTextFieldTextController!.text.isNotEmpty
                                                                                                      ? InkWell(
                                                                                                          onTap: () async {
                                                                                                            _model.searchTowerTextFieldTextController?.clear();
                                                                                                            _model.selectedTower = _model.searchTowerTextFieldTextController.text;
                                                                                                            safeSetState(() {});
                                                                                                            safeSetState(() {});
                                                                                                          },
                                                                                                          child: Icon(
                                                                                                            Icons.clear,
                                                                                                            size: 22,
                                                                                                          ),
                                                                                                        )
                                                                                                      : null,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      fontSize: 18.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                enableInteractiveSelection: true,
                                                                                                validator: _model.searchTowerTextFieldTextControllerValidator.asValidator(context),
                                                                                              );
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: FutureBuilder<List<TowerDisplayWithPlantsRow>>(
                                                                                    future: TowerDisplayWithPlantsTable().queryRows(
                                                                                      queryFn: (q) => q
                                                                                          .eqOrNull(
                                                                                            'farm_id',
                                                                                            FFAppState().farmID,
                                                                                          )
                                                                                          .ilike(
                                                                                            'tower_identifier',
                                                                                            _model.selectedTower == '\"\"' ? '%' : '%${_model.selectedTower}%',
                                                                                          )
                                                                                          .order('tower_identifier', ascending: true),
                                                                                    ),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: CircularProgressIndicator(
                                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                FlutterFlowTheme.of(context).primary,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      List<TowerDisplayWithPlantsRow> currentTowerContainerTowerDisplayWithPlantsRowList = snapshot.data!;

                                                                                      return Container(
                                                                                        height: double.infinity,
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                          child: Builder(
                                                                                            builder: (context) {
                                                                                              final towerStatus = currentTowerContainerTowerDisplayWithPlantsRowList.toList();

                                                                                              return FlutterFlowDataTable<TowerDisplayWithPlantsRow>(
                                                                                                controller: _model.towersDataTableController,
                                                                                                data: towerStatus,
                                                                                                numRows: towerStatus.length,
                                                                                                columnsBuilder: (onSortChanged) => [
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Tower',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Status',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    onSort: onSortChanged,
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Plant',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          'Empty Ports',
                                                                                                          textAlign: TextAlign.start,
                                                                                                          style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                                font: GoogleFonts.plusJakartaSans(
                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                                ),
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                fontSize: 18.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Planted Ports',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Action',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Date Planted',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                                dataRowBuilder: (towerStatusItem, towerStatusIndex, selected, onSelectChanged) => DataRow(
                                                                                                  color: MaterialStateProperty.all(
                                                                                                    towerStatusIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  ),
                                                                                                  cells: [
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          valueOrDefault<String>(
                                                                                                            towerStatusItem.towerIdentifier,
                                                                                                            'Tower',
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                font: GoogleFonts.plusJakartaSans(
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                ),
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                      child: Container(
                                                                                                        width: 75.0,
                                                                                                        height: 30.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: colorFromCssString(
                                                                                                            towerStatusItem.statusColor!,
                                                                                                            defaultColor: FlutterFlowTheme.of(context).alternate,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                                                        ),
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                                          children: [
                                                                                                            Flexible(
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Flexible(
                                                                                                                    child: Align(
                                                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          towerStatusItem.towerStatus,
                                                                                                                          'Status',
                                                                                                                        ),
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                              ),
                                                                                                                              color: colorFromCssString(
                                                                                                                                towerStatusItem.textColor!,
                                                                                                                                defaultColor: Colors.black,
                                                                                                                              ),
                                                                                                                              fontSize: 12.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        towerStatusItem.plantName,
                                                                                                        'Empty',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            fontSize: 12.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                          child: Text(
                                                                                                            valueOrDefault<String>(
                                                                                                              towerStatusItem.overallAvailablePorts?.toString(),
                                                                                                              '0',
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                  ),
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          towerStatusItem.individualPortsUsed?.toString(),
                                                                                                          '0',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                      children: [
                                                                                                        if (FFAppState().hasPlants == true)
                                                                                                          AlignedTooltip(
                                                                                                            content: Padding(
                                                                                                              padding: EdgeInsets.all(4.0),
                                                                                                              child: Text(
                                                                                                                'Plant Tower',
                                                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                      ),
                                                                                                                      fontSize: 12.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            offset: 4.0,
                                                                                                            preferredDirection: AxisDirection.down,
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            elevation: 4.0,
                                                                                                            tailBaseWidth: 24.0,
                                                                                                            tailLength: 12.0,
                                                                                                            waitDuration: Duration(milliseconds: 100),
                                                                                                            showDuration: Duration(milliseconds: 1500),
                                                                                                            triggerMode: TooltipTriggerMode.tap,
                                                                                                            child: Visibility(
                                                                                                              visible: (towerStatusItem.towerStatus == 'Available') || (towerStatusItem.towerStatus == 'Partially Available'),
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  await showModalBottomSheet(
                                                                                                                    isScrollControlled: true,
                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                    enableDrag: false,
                                                                                                                    context: context,
                                                                                                                    builder: (context) {
                                                                                                                      return WebViewAware(
                                                                                                                        child: GestureDetector(
                                                                                                                          onTap: () {
                                                                                                                            FocusScope.of(context).unfocus();
                                                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                          },
                                                                                                                          child: Padding(
                                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                                            child: PlantTowersWidget(
                                                                                                                              towerID: towerStatusItem.towerId!,
                                                                                                                              towerName: towerStatusItem.towerIdentifier!,
                                                                                                                              availablePorts: towerStatusItem.overallAvailablePorts!,
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      );
                                                                                                                    },
                                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                                },
                                                                                                                child: Container(
                                                                                                                  width: 30.0,
                                                                                                                  height: 30.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                                                    shape: BoxShape.circle,
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Align(
                                                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      'P',
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                            ),
                                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        AlignedTooltip(
                                                                                                          content: Padding(
                                                                                                            padding: EdgeInsets.all(4.0),
                                                                                                            child: Text(
                                                                                                              'Harvest',
                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                    ),
                                                                                                                    fontSize: 12.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          offset: 4.0,
                                                                                                          preferredDirection: AxisDirection.down,
                                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          elevation: 4.0,
                                                                                                          tailBaseWidth: 24.0,
                                                                                                          tailLength: 12.0,
                                                                                                          waitDuration: Duration(milliseconds: 100),
                                                                                                          showDuration: Duration(milliseconds: 1500),
                                                                                                          triggerMode: TooltipTriggerMode.tap,
                                                                                                          child: Visibility(
                                                                                                            visible: towerStatusItem.towerStatus == 'Growing',
                                                                                                            child: InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {
                                                                                                                await showModalBottomSheet(
                                                                                                                  isScrollControlled: true,
                                                                                                                  backgroundColor: Colors.transparent,
                                                                                                                  enableDrag: false,
                                                                                                                  context: context,
                                                                                                                  builder: (context) {
                                                                                                                    return WebViewAware(
                                                                                                                      child: GestureDetector(
                                                                                                                        onTap: () {
                                                                                                                          FocusScope.of(context).unfocus();
                                                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                        },
                                                                                                                        child: Padding(
                                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                                          child: AddHarvestBasicWidget(
                                                                                                                            actionID: towerStatusItem.actionId!,
                                                                                                                            towerIdentifier: towerStatusItem.towerIdentifier!,
                                                                                                                            plantName: towerStatusItem.plantName!,
                                                                                                                            plantID: towerStatusItem.plantId!,
                                                                                                                            towerID: towerStatusItem.towerId!,
                                                                                                                            growingQuantity: towerStatusItem.individualPortsUsed!,
                                                                                                                            towerContentID: towerStatusItem.contentId,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ).then((value) => safeSetState(() {}));
                                                                                                              },
                                                                                                              child: Container(
                                                                                                                width: 30.0,
                                                                                                                height: 30.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  shape: BoxShape.circle,
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'H',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                          ),
                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        AlignedTooltip(
                                                                                                          content: Padding(
                                                                                                            padding: EdgeInsets.all(4.0),
                                                                                                            child: Text(
                                                                                                              'Waste',
                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                    ),
                                                                                                                    fontSize: 12.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          offset: 4.0,
                                                                                                          preferredDirection: AxisDirection.down,
                                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          elevation: 4.0,
                                                                                                          tailBaseWidth: 24.0,
                                                                                                          tailLength: 12.0,
                                                                                                          waitDuration: Duration(milliseconds: 100),
                                                                                                          showDuration: Duration(milliseconds: 1500),
                                                                                                          triggerMode: TooltipTriggerMode.tap,
                                                                                                          child: Visibility(
                                                                                                            visible: towerStatusItem.towerStatus == 'Growing',
                                                                                                            child: InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {
                                                                                                                await showModalBottomSheet(
                                                                                                                  isScrollControlled: true,
                                                                                                                  backgroundColor: Colors.transparent,
                                                                                                                  enableDrag: false,
                                                                                                                  context: context,
                                                                                                                  builder: (context) {
                                                                                                                    return WebViewAware(
                                                                                                                      child: GestureDetector(
                                                                                                                        onTap: () {
                                                                                                                          FocusScope.of(context).unfocus();
                                                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                        },
                                                                                                                        child: Padding(
                                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                                          child: ConfirmTowerWasteWidget(
                                                                                                                            actionID: towerStatusItem.actionId!,
                                                                                                                            towerID: towerStatusItem.towerId!,
                                                                                                                            plantID: towerStatusItem.plantId!,
                                                                                                                            plantName: towerStatusItem.plantName!,
                                                                                                                            plantQuantity: valueOrDefault<int>(
                                                                                                                              towerStatusItem.individualPortsUsed,
                                                                                                                              0,
                                                                                                                            ),
                                                                                                                            towerContentsID: towerStatusItem.contentId!,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ).then((value) => safeSetState(() {}));
                                                                                                              },
                                                                                                              child: Container(
                                                                                                                width: 30.0,
                                                                                                                height: 30.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                  shape: BoxShape.circle,
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'W',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                          ),
                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        AlignedTooltip(
                                                                                                          content: Padding(
                                                                                                            padding: EdgeInsets.all(4.0),
                                                                                                            child: Text(
                                                                                                              'Clean',
                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                    ),
                                                                                                                    fontSize: 12.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          offset: 4.0,
                                                                                                          preferredDirection: AxisDirection.down,
                                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          elevation: 4.0,
                                                                                                          tailBaseWidth: 24.0,
                                                                                                          tailLength: 12.0,
                                                                                                          waitDuration: Duration(milliseconds: 100),
                                                                                                          showDuration: Duration(milliseconds: 1500),
                                                                                                          triggerMode: TooltipTriggerMode.tap,
                                                                                                          child: Visibility(
                                                                                                            visible: towerStatusItem.towerStatus == 'Clean',
                                                                                                            child: InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {
                                                                                                                await showModalBottomSheet(
                                                                                                                  isScrollControlled: true,
                                                                                                                  backgroundColor: Colors.transparent,
                                                                                                                  enableDrag: false,
                                                                                                                  context: context,
                                                                                                                  builder: (context) {
                                                                                                                    return WebViewAware(
                                                                                                                      child: GestureDetector(
                                                                                                                        onTap: () {
                                                                                                                          FocusScope.of(context).unfocus();
                                                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                        },
                                                                                                                        child: Padding(
                                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                                          child: CleanCompleteTaskWidget(
                                                                                                                            towerID: towerStatusItem.towerId!,
                                                                                                                            taskID: towerStatusItem.cleaningTaskIds.firstOrNull!,
                                                                                                                            taskName: towerStatusItem.cleaningTaskName!,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ).then((value) => safeSetState(() {}));
                                                                                                              },
                                                                                                              child: Container(
                                                                                                                width: 30.0,
                                                                                                                height: 30.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: Color(0xFFB8D3E6),
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'C',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                          ),
                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                          fontSize: 16.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        AlignedTooltip(
                                                                                                          content: Padding(
                                                                                                            padding: EdgeInsets.all(4.0),
                                                                                                            child: Text(
                                                                                                              'Maitenance',
                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                    ),
                                                                                                                    fontSize: 12.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          offset: 4.0,
                                                                                                          preferredDirection: AxisDirection.down,
                                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          elevation: 4.0,
                                                                                                          tailBaseWidth: 24.0,
                                                                                                          tailLength: 12.0,
                                                                                                          waitDuration: Duration(milliseconds: 100),
                                                                                                          showDuration: Duration(milliseconds: 1500),
                                                                                                          triggerMode: TooltipTriggerMode.tap,
                                                                                                          child: Visibility(
                                                                                                            visible: towerStatusItem.hasMaintenance == true,
                                                                                                            child: InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {
                                                                                                                await showModalBottomSheet(
                                                                                                                  isScrollControlled: true,
                                                                                                                  backgroundColor: Colors.transparent,
                                                                                                                  enableDrag: false,
                                                                                                                  context: context,
                                                                                                                  builder: (context) {
                                                                                                                    return WebViewAware(
                                                                                                                      child: GestureDetector(
                                                                                                                        onTap: () {
                                                                                                                          FocusScope.of(context).unfocus();
                                                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                        },
                                                                                                                        child: Padding(
                                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                                          child: TaskMarkCompletedWidget(
                                                                                                                            taskID: towerStatusItem.maintenanceTaskIds.firstOrNull!,
                                                                                                                            taskName: towerStatusItem.maintenanceTaskName!,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ).then((value) => safeSetState(() {}));
                                                                                                              },
                                                                                                              child: Container(
                                                                                                                width: 30.0,
                                                                                                                height: 30.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: Color(0xFFE74444),
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    'M',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                          ),
                                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                          fontSize: 16.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FontWeight.bold,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Visibility(
                                                                                                      visible: towerStatusItem.datePlanted != null,
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          valueOrDefault<String>(
                                                                                                            dateTimeFormat("MMMEd", towerStatusItem.datePlanted),
                                                                                                            '0',
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                font: GoogleFonts.plusJakartaSans(
                                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                ),
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].map((c) => DataCell(c)).toList(),
                                                                                                ),
                                                                                                paginated: false,
                                                                                                selectable: false,
                                                                                                height: double.infinity,
                                                                                                headingRowHeight: 56.0,
                                                                                                dataRowHeight: 48.0,
                                                                                                columnSpacing: 20.0,
                                                                                                headingRowColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                                sortIconColor: FlutterFlowTheme.of(context).primary,
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                addHorizontalDivider: true,
                                                                                                addTopAndBottomDivider: false,
                                                                                                hideDefaultHorizontalDivider: true,
                                                                                                horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                horizontalDividerThickness: 1.0,
                                                                                                addVerticalDivider: false,
                                                                                              );
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                        child: FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return WebViewAware(
                                                                                                  child: GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: AddSpacerActionWidget(
                                                                                                        spacerCount: 1,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() => _model.addSpacerTray5555 = value));

                                                                                            if (_model.addSpacerTray5555!) {
                                                                                              safeSetState(() => _model.requestCompleter = null);
                                                                                              await _model.waitForRequestCompleted();
                                                                                            }

                                                                                            safeSetState(() {});
                                                                                          },
                                                                                          text: 'Add Spacer',
                                                                                          options: FFButtonOptions(
                                                                                            height: 40.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                  ),
                                                                                                  color: Colors.white,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: FutureBuilder<List<SpacerInventoryRow>>(
                                                                                    future: (_model.requestCompleter ??= Completer<List<SpacerInventoryRow>>()
                                                                                          ..complete(SpacerInventoryTable().queryRows(
                                                                                            queryFn: (q) => q
                                                                                                .eqOrNull(
                                                                                                  'farm_id',
                                                                                                  FFAppState().farmID,
                                                                                                )
                                                                                                .neqOrNull(
                                                                                                  'status',
                                                                                                  'Completed',
                                                                                                )
                                                                                                .order('spacer_date', ascending: true),
                                                                                          )))
                                                                                        .future,
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: CircularProgressIndicator(
                                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                FlutterFlowTheme.of(context).primary,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      List<SpacerInventoryRow> spacerContainerSpacerInventoryRowList = snapshot.data!;

                                                                                      return Container(
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                                                                                          child: Builder(
                                                                                            builder: (context) {
                                                                                              final spacerInventory = spacerContainerSpacerInventoryRowList.toList();

                                                                                              return FlutterFlowDataTable<SpacerInventoryRow>(
                                                                                                controller: _model.paginatedDataTableController,
                                                                                                data: spacerInventory,
                                                                                                numRows: spacerInventory.length,
                                                                                                columnsBuilder: (onSortChanged) => [
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Plant Type',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Spacer Date',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Seeded Date',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Ready Date',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Status',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Action',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Quantity',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                                dataRowBuilder: (spacerInventoryItem, spacerInventoryIndex, selected, onSelectChanged) => DataRow(
                                                                                                  color: MaterialStateProperty.all(
                                                                                                    spacerInventoryIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  ),
                                                                                                  cells: [
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        spacerInventoryItem.plantType,
                                                                                                        'Plant',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            fontSize: 14.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        dateTimeFormat("MEd", spacerInventoryItem.spacerDate),
                                                                                                        'Mon, 01/01',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            fontSize: 16.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        dateTimeFormat("MEd", spacerInventoryItem.seededDate),
                                                                                                        'Mon, 01/01',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            fontSize: 16.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        dateTimeFormat("MEd", spacerInventoryItem.expectedReadyDate),
                                                                                                        'Mon, 01/01',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            fontSize: 16.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Container(
                                                                                                            width: 95.0,
                                                                                                            height: 30.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: colorFromCssString(
                                                                                                                spacerInventoryItem.statusBackgroundColor!,
                                                                                                                defaultColor: FlutterFlowTheme.of(context).alternate,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(7.0),
                                                                                                              border: Border.all(
                                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                                width: 0.5,
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Align(
                                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                valueOrDefault<String>(
                                                                                                                  spacerInventoryItem.status,
                                                                                                                  'Status',
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      font: GoogleFonts.plusJakartaSans(
                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                      ),
                                                                                                                      color: colorFromCssString(
                                                                                                                        spacerInventoryItem.statusColor!,
                                                                                                                        defaultColor: Colors.black,
                                                                                                                      ),
                                                                                                                      fontSize: 16.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.bold,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Stack(
                                                                                                      children: [
                                                                                                        if (spacerInventoryItem.status == 'Growing')
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              AlignedTooltip(
                                                                                                                content: Padding(
                                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                                  child: Text(
                                                                                                                    'Mark As Ready',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                          ),
                                                                                                                          fontSize: 12.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                offset: 4.0,
                                                                                                                preferredDirection: AxisDirection.down,
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                elevation: 4.0,
                                                                                                                tailBaseWidth: 24.0,
                                                                                                                tailLength: 12.0,
                                                                                                                waitDuration: Duration(milliseconds: 100),
                                                                                                                showDuration: Duration(milliseconds: 1500),
                                                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                                                child: Visibility(
                                                                                                                  visible: spacerInventoryItem.status == 'Growing',
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                                    child: InkWell(
                                                                                                                      splashColor: Colors.transparent,
                                                                                                                      focusColor: Colors.transparent,
                                                                                                                      hoverColor: Colors.transparent,
                                                                                                                      highlightColor: Colors.transparent,
                                                                                                                      onTap: () async {
                                                                                                                        await showModalBottomSheet(
                                                                                                                          isScrollControlled: true,
                                                                                                                          backgroundColor: Colors.transparent,
                                                                                                                          enableDrag: false,
                                                                                                                          context: context,
                                                                                                                          builder: (context) {
                                                                                                                            return WebViewAware(
                                                                                                                              child: GestureDetector(
                                                                                                                                onTap: () {
                                                                                                                                  FocusScope.of(context).unfocus();
                                                                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                },
                                                                                                                                child: Padding(
                                                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                  child: ConfirmSpacerReadyWidget(
                                                                                                                                    plantID: spacerInventoryItem.plantId,
                                                                                                                                    quantity: spacerInventoryItem.quantity,
                                                                                                                                    seededDate: spacerInventoryItem.seededDate,
                                                                                                                                    spacerID: spacerInventoryItem.spacerId,
                                                                                                                                    towerID: 0,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            );
                                                                                                                          },
                                                                                                                        ).then((value) => safeSetState(() => _model.spacerReady0000 = value));

                                                                                                                        if (_model.spacerReady0000!) {
                                                                                                                          safeSetState(() => _model.requestCompleter = null);
                                                                                                                          await _model.waitForRequestCompleted();
                                                                                                                        }

                                                                                                                        safeSetState(() {});
                                                                                                                      },
                                                                                                                      child: Container(
                                                                                                                        width: 30.0,
                                                                                                                        height: 30.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).secondary,
                                                                                                                          shape: BoxShape.circle,
                                                                                                                          border: Border.all(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        child: Align(
                                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            'R',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                  ),
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              AlignedTooltip(
                                                                                                                content: Padding(
                                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                                  child: Text(
                                                                                                                    'Mark As Waste',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                          ),
                                                                                                                          fontSize: 12.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                offset: 4.0,
                                                                                                                preferredDirection: AxisDirection.down,
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                elevation: 4.0,
                                                                                                                tailBaseWidth: 24.0,
                                                                                                                tailLength: 12.0,
                                                                                                                waitDuration: Duration(milliseconds: 100),
                                                                                                                showDuration: Duration(milliseconds: 1500),
                                                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                                                child: Visibility(
                                                                                                                  visible: spacerInventoryItem.status == 'Growing',
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                                    child: InkWell(
                                                                                                                      splashColor: Colors.transparent,
                                                                                                                      focusColor: Colors.transparent,
                                                                                                                      hoverColor: Colors.transparent,
                                                                                                                      highlightColor: Colors.transparent,
                                                                                                                      onTap: () async {
                                                                                                                        await showModalBottomSheet(
                                                                                                                          isScrollControlled: true,
                                                                                                                          backgroundColor: Colors.transparent,
                                                                                                                          enableDrag: false,
                                                                                                                          context: context,
                                                                                                                          builder: (context) {
                                                                                                                            return WebViewAware(
                                                                                                                              child: GestureDetector(
                                                                                                                                onTap: () {
                                                                                                                                  FocusScope.of(context).unfocus();
                                                                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                },
                                                                                                                                child: Padding(
                                                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                  child: ConfirmSpacerWasteWidget(
                                                                                                                                    actionID: spacerInventoryItem.actionId!,
                                                                                                                                    spacerID: spacerInventoryItem.spacerId!,
                                                                                                                                    plantID: spacerInventoryItem.plantId!,
                                                                                                                                    seededDate: spacerInventoryItem.seededDate!,
                                                                                                                                    plantName: spacerInventoryItem.plantType!,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            );
                                                                                                                          },
                                                                                                                        ).then((value) => safeSetState(() => _model.spacerWasteGrowing7722 = value));

                                                                                                                        if (_model.spacerWasteGrowing7722!) {
                                                                                                                          safeSetState(() => _model.requestCompleter = null);
                                                                                                                          await _model.waitForRequestCompleted();
                                                                                                                        }

                                                                                                                        safeSetState(() {});
                                                                                                                      },
                                                                                                                      child: Container(
                                                                                                                        width: 30.0,
                                                                                                                        height: 30.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                          shape: BoxShape.circle,
                                                                                                                        ),
                                                                                                                        child: Align(
                                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            'W',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                  ),
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        if (spacerInventoryItem.status == 'Ready')
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              AlignedTooltip(
                                                                                                                content: Padding(
                                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                                  child: Text(
                                                                                                                    'Mark As Waste',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                          font: GoogleFonts.plusJakartaSans(
                                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                          ),
                                                                                                                          fontSize: 12.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                offset: 4.0,
                                                                                                                preferredDirection: AxisDirection.down,
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                elevation: 4.0,
                                                                                                                tailBaseWidth: 24.0,
                                                                                                                tailLength: 12.0,
                                                                                                                waitDuration: Duration(milliseconds: 100),
                                                                                                                showDuration: Duration(milliseconds: 1500),
                                                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                                                child: Visibility(
                                                                                                                  visible: spacerInventoryItem.status == 'Ready',
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                                    child: InkWell(
                                                                                                                      splashColor: Colors.transparent,
                                                                                                                      focusColor: Colors.transparent,
                                                                                                                      hoverColor: Colors.transparent,
                                                                                                                      highlightColor: Colors.transparent,
                                                                                                                      onTap: () async {
                                                                                                                        await showModalBottomSheet(
                                                                                                                          isScrollControlled: true,
                                                                                                                          backgroundColor: Colors.transparent,
                                                                                                                          enableDrag: false,
                                                                                                                          context: context,
                                                                                                                          builder: (context) {
                                                                                                                            return WebViewAware(
                                                                                                                              child: GestureDetector(
                                                                                                                                onTap: () {
                                                                                                                                  FocusScope.of(context).unfocus();
                                                                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                                },
                                                                                                                                child: Padding(
                                                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                                                  child: ConfirmSpacerWasteWidget(
                                                                                                                                    actionID: spacerInventoryItem.actionId!,
                                                                                                                                    spacerID: spacerInventoryItem.spacerId!,
                                                                                                                                    plantID: valueOrDefault<int>(
                                                                                                                                      spacerInventoryItem.plantId,
                                                                                                                                      0,
                                                                                                                                    ),
                                                                                                                                    seededDate: spacerInventoryItem.seededDate!,
                                                                                                                                    plantName: spacerInventoryItem.plantType!,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            );
                                                                                                                          },
                                                                                                                        ).then((value) => safeSetState(() => _model.spacerWasteReady9999 = value));

                                                                                                                        if (_model.spacerWasteReady9999!) {
                                                                                                                          safeSetState(() => _model.requestCompleter = null);
                                                                                                                          await _model.waitForRequestCompleted();
                                                                                                                        }

                                                                                                                        safeSetState(() {});
                                                                                                                      },
                                                                                                                      child: Container(
                                                                                                                        width: 30.0,
                                                                                                                        height: 30.0,
                                                                                                                        decoration: BoxDecoration(
                                                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                                                          shape: BoxShape.circle,
                                                                                                                        ),
                                                                                                                        child: Align(
                                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                          child: Text(
                                                                                                                            'W',
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                  ),
                                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        SpacerQuantiryTextFieldWidget(
                                                                                                          key: Key('Key1v2_${spacerInventoryIndex}_of_${spacerInventory.length}'),
                                                                                                          spacerID: spacerInventoryItem.spacerId,
                                                                                                          spacerQuantity: spacerInventoryItem.quantity!,
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                          child: InkWell(
                                                                                                            splashColor: Colors.transparent,
                                                                                                            focusColor: Colors.transparent,
                                                                                                            hoverColor: Colors.transparent,
                                                                                                            highlightColor: Colors.transparent,
                                                                                                            onTap: () async {
                                                                                                              _model.syncIsLoading = true;
                                                                                                              safeSetState(() {});
                                                                                                              await ActionsTable().update(
                                                                                                                data: {
                                                                                                                  'quantity': FFAppState().spacerPlantCount,
                                                                                                                  'updated_at': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                                                },
                                                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                                                  'action_id',
                                                                                                                  spacerInventoryItem.actionId,
                                                                                                                ),
                                                                                                              );
                                                                                                              if (animationsMap['iconOnActionTriggerAnimation'] != null) {
                                                                                                                await animationsMap['iconOnActionTriggerAnimation']!.controller.forward(from: 0.0);
                                                                                                              }
                                                                                                              _model.syncIsLoading = false;
                                                                                                              safeSetState(() {});
                                                                                                              safeSetState(() => _model.requestCompleter = null);
                                                                                                              await _model.waitForRequestCompleted();
                                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                                SnackBar(
                                                                                                                  content: Text(
                                                                                                                    'Spacer quantity updated!',
                                                                                                                    style: TextStyle(
                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      fontSize: 18.0,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  duration: Duration(milliseconds: 4000),
                                                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                            child: Icon(
                                                                                                              Icons.sync,
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              size: 24.0,
                                                                                                            ),
                                                                                                          ).animateOnActionTrigger(
                                                                                                            animationsMap['iconOnActionTriggerAnimation']!,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ].map((c) => DataCell(c)).toList(),
                                                                                                ),
                                                                                                paginated: false,
                                                                                                selectable: false,
                                                                                                headingRowHeight: 56.0,
                                                                                                dataRowHeight: 65.0,
                                                                                                columnSpacing: 20.0,
                                                                                                headingRowColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                addHorizontalDivider: true,
                                                                                                addTopAndBottomDivider: false,
                                                                                                hideDefaultHorizontalDivider: true,
                                                                                                horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                horizontalDividerThickness: 1.0,
                                                                                                addVerticalDivider: false,
                                                                                              );
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 0.0, 10.0),
                                                                                      child: Text(
                                                                                        '',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Expanded(
                                                                                  child: FutureBuilder<List<PlantDistributionBreakdownRow>>(
                                                                                    future: PlantDistributionBreakdownTable().queryRows(
                                                                                      queryFn: (q) => q
                                                                                          .eqOrNull(
                                                                                            'farm_id',
                                                                                            FFAppState().farmID,
                                                                                          )
                                                                                          .order('plant_name', ascending: true),
                                                                                    ),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: CircularProgressIndicator(
                                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                FlutterFlowTheme.of(context).primary,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      List<PlantDistributionBreakdownRow> mainContainerPlantDistributionBreakdownRowList = snapshot.data!;

                                                                                      return Container(
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                          child: Builder(
                                                                                            builder: (context) {
                                                                                              final plantBreakdown = mainContainerPlantDistributionBreakdownRowList.toList();

                                                                                              return FlutterFlowDataTable<PlantDistributionBreakdownRow>(
                                                                                                controller: _model.mainDataTableController,
                                                                                                data: plantBreakdown,
                                                                                                columnsBuilder: (onSortChanged) => [
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Plant',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Status',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        '#Towers',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        '#Plants',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Capacity',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  DataColumn2(
                                                                                                    label: DefaultTextStyle.merge(
                                                                                                      softWrap: true,
                                                                                                      child: Text(
                                                                                                        'Utilization',
                                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 18.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                                dataRowBuilder: (plantBreakdownItem, plantBreakdownIndex, selected, onSelectChanged) => DataRow(
                                                                                                  color: MaterialStateProperty.all(
                                                                                                    plantBreakdownIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  ),
                                                                                                  cells: [
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        plantBreakdownItem.plantName,
                                                                                                        'Plant',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: 100.0,
                                                                                                      height: 30.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: colorFromCssString(
                                                                                                          plantBreakdownItem.statusColor!,
                                                                                                          defaultColor: FlutterFlowTheme.of(context).alternate,
                                                                                                        ),
                                                                                                        boxShadow: [
                                                                                                          BoxShadow(
                                                                                                            blurRadius: 4.0,
                                                                                                            color: Color(0x33000000),
                                                                                                            offset: Offset(
                                                                                                              0.0,
                                                                                                              2.0,
                                                                                                            ),
                                                                                                          )
                                                                                                        ],
                                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                                      ),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Align(
                                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                plantBreakdownItem.statusDisplay,
                                                                                                                'Status',
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                    ),
                                                                                                                    color: colorFromCssString(
                                                                                                                      plantBreakdownItem.textColor!,
                                                                                                                      defaultColor: Colors.black,
                                                                                                                    ),
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        plantBreakdownItem.towerCount?.toString(),
                                                                                                        '0',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        plantBreakdownItem.totalPlants?.toString(),
                                                                                                        '0',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        plantBreakdownItem.capacity?.toString(),
                                                                                                        '0',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        plantBreakdownItem.utilization?.toString(),
                                                                                                        '0',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.plusJakartaSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ].map((c) => DataCell(c)).toList(),
                                                                                                ),
                                                                                                paginated: true,
                                                                                                selectable: false,
                                                                                                hidePaginator: false,
                                                                                                showFirstLastButtons: false,
                                                                                                headingRowHeight: 56.0,
                                                                                                dataRowHeight: 48.0,
                                                                                                columnSpacing: 20.0,
                                                                                                headingRowColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                addHorizontalDivider: true,
                                                                                                addTopAndBottomDivider: false,
                                                                                                hideDefaultHorizontalDivider: true,
                                                                                                horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                horizontalDividerThickness: 1.0,
                                                                                                addVerticalDivider: false,
                                                                                              );
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
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
                                            ],
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation5']!),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
