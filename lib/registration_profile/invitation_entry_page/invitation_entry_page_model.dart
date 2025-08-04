import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/invitation_create_account/invitation_create_account_widget.dart';
import 'dart:ui';
import 'invitation_entry_page_widget.dart' show InvitationEntryPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class InvitationEntryPageModel
    extends FlutterFlowModel<InvitationEntryPageWidget> {
  ///  Local state fields for this component.

  String? invitationCode;

  ///  State fields for stateful widgets in this component.

  // State field(s) for invitationTextField widget.
  FocusNode? invitationTextFieldFocusNode;
  TextEditingController? invitationTextFieldTextController;
  String? Function(BuildContext, String?)?
      invitationTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (validateInvitationCode)] action in invitationButton widget.
  ApiCallResponse? apiResultx6g;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    invitationTextFieldFocusNode?.dispose();
    invitationTextFieldTextController?.dispose();
  }
}
