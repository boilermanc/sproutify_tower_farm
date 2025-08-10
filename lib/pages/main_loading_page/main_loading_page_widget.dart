import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_loading_page_model.dart';
export 'main_loading_page_model.dart';

class MainLoadingPageWidget extends StatefulWidget {
  const MainLoadingPageWidget({super.key});

  static String routeName = 'mainLoadingPage';
  static String routePath = '/mainLoadingPage';

  @override
  State<MainLoadingPageWidget> createState() => _MainLoadingPageWidgetState();
}

class _MainLoadingPageWidgetState extends State<MainLoadingPageWidget> {
  late MainLoadingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLoadingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().isLoading = true;
      FFAppState().navOpen = true;
      _model.farmLoad4433 = await InitialFarmLoadTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'user_id',
          currentUserUid,
        ),
      );
      FFAppState().farmID = _model.farmLoad4433!.firstOrNull!.farmId!;
      FFAppState().farmName = _model.farmLoad4433!.firstOrNull!.farmName!;
      FFAppState().farmUnit =
          _model.farmLoad4433!.firstOrNull!.measurementSystem!;
      FFAppState().firstName = _model.farmLoad4433!.firstOrNull!.firstName!;
      FFAppState().farmCity = _model.farmLoad4433!.firstOrNull!.city!;
      FFAppState().farmLatitude = _model.farmLoad4433!.firstOrNull!.latitude!;
      FFAppState().farmLongitude = _model.farmLoad4433!.firstOrNull!.longitude!;
      FFAppState().towersAreConfigured =
          _model.farmLoad4433!.firstOrNull!.hasTowers!;
      FFAppState().profileImage = valueOrDefault<String>(
        _model.farmLoad4433?.firstOrNull?.profileImageUrl,
        'https://rsndonfydqhykowljuyn.supabase.co/storage/v1/object/public/profileImages/pics/default_profile.png',
      );
      FFAppState().farmImage = _model.farmLoad4433!.firstOrNull!.farmImageUrl!;
      FFAppState().usesLighting =
          _model.farmLoad4433!.firstOrNull!.usesLighting!;
      FFAppState().hasTower = _model.farmLoad4433!.firstOrNull!.hasTowers!;
      FFAppState().hasVendors = _model.farmLoad4433!.firstOrNull!.hasVendors!;
      FFAppState().hasPlants = _model.farmLoad4433!.firstOrNull!.hasPlants!;
      _model.farmWeather8888 = await GetOpenWeatherCall.call(
        farmLongitude: _model.farmLoad4433?.firstOrNull?.longitude?.toString(),
        farmLatitude: _model.farmLoad4433?.firstOrNull?.latitude?.toString(),
        farmUnit: _model.farmLoad4433?.firstOrNull?.measurementSystem,
        farmID: FFAppState().farmID,
      );

      _model.weatherData5533 = await WeatherLogsTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'farm_id',
          FFAppState().farmID,
        ),
      );
      FFAppState().farmTemp =
          _model.weatherData5533!.firstOrNull!.tempF!.toString();
      FFAppState().farmHumidity =
          _model.weatherData5533!.firstOrNull!.humidity!.toString();
      FFAppState().farmCondition =
          _model.weatherData5533!.firstOrNull!.conditions!;
      safeSetState(() {});
      // Loading Set To False
      FFAppState().isLoading = false;

      context.goNamed(MainDashboardWidget.routeName);
    });

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
      child: PopScope(
        canPop: false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FlutterFlowVideoPlayer(
                  path:
                      'assets/videos/44f04b7d-4449-4fbc-ba00-69e2adc0abe2_main.mp4',
                  videoType: VideoType.asset,
                  autoPlay: true,
                  looping: true,
                  showControls: false,
                  allowFullScreen: true,
                  allowPlaybackSpeedMenu: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
