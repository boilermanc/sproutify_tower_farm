import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:async';
import 'general_farm_settings_widget.dart' show GeneralFarmSettingsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GeneralFarmSettingsModel
    extends FlutterFlowModel<GeneralFarmSettingsWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row(s)] action in imperialButton widget.
  List<FarmsRow>? farmUnitMeasurment7744;
  Completer<List<ProfilesRow>>? requestCompleter;
  // State field(s) for farmSpacerTraySize widget.
  FocusNode? farmSpacerTraySizeFocusNode;
  TextEditingController? farmSpacerTraySizeTextController;
  String? Function(BuildContext, String?)?
      farmSpacerTraySizeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    farmSpacerTraySizeFocusNode?.dispose();
    farmSpacerTraySizeTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
