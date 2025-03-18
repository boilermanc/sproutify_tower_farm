import '';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/spacer/add_spacer_action/add_spacer_action_widget.dart';
import '/spacer/spacer_count_component/spacer_count_component_widget.dart';
import 'dart:ui';
import 'add_spacer_action_widget.dart' show AddSpacerActionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddSpacerActionModel extends FlutterFlowModel<AddSpacerActionWidget> {
  ///  Local state fields for this component.

  int? spacerCount = 1;

  int? plantID = 0;

  DateTime? seededDate;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
