import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'main_loading_page_widget.dart' show MainLoadingPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainLoadingPageModel extends FlutterFlowModel<MainLoadingPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in mainLoadingPage widget.
  List<InitialFarmLoadRow>? farmLoad4433;
  // Stores action output result for [Backend Call - API (getOpenWeather)] action in mainLoadingPage widget.
  ApiCallResponse? farmWeather8888;
  // Stores action output result for [Backend Call - Query Rows] action in mainLoadingPage widget.
  List<WeatherLogsRow>? weatherData5533;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
