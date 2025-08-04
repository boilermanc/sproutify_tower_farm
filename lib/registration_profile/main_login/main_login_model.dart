import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/setup_flow_main/setup_flow_main_widget.dart';
import '/registration_profile/sign_up_landing_page/sign_up_landing_page_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'main_login_widget.dart' show MainLoginWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MainLoginModel extends FlutterFlowModel<MainLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in loginButton widget.
  List<InitialFarmLoadRow>? profileResponse0011;
  // Stores action output result for [Backend Call - API (getOpenWeather)] action in loginButton widget.
  ApiCallResponse? farmWeather8888;
  // Stores action output result for [Backend Call - Query Rows] action in loginButton widget.
  List<WeatherLogsRow>? weatherData5533;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
