import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/invite_success/invite_success_widget.dart';
import 'dart:ui';
import 'invite_success_landing_widget.dart' show InviteSuccessLandingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InviteSuccessLandingModel
    extends FlutterFlowModel<InviteSuccessLandingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for inviteSuccess component.
  late InviteSuccessModel inviteSuccessModel;

  @override
  void initState(BuildContext context) {
    inviteSuccessModel = createModel(context, () => InviteSuccessModel());
  }

  @override
  void dispose() {
    inviteSuccessModel.dispose();
  }
}
