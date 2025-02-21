import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/invite_verification/invite_verification_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'verify_invite_widget.dart' show VerifyInviteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerifyInviteModel extends FlutterFlowModel<VerifyInviteWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in verify_invite widget.
  List<InvitationsRow>? invite;
  // Model for inviteVerification component.
  late InviteVerificationModel inviteVerificationModel;

  @override
  void initState(BuildContext context) {
    inviteVerificationModel =
        createModel(context, () => InviteVerificationModel());
  }

  @override
  void dispose() {
    inviteVerificationModel.dispose();
  }
}
