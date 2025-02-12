import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/create_new_staff/create_new_staff_widget.dart';
import 'dart:ui';
import 'invite_widget.dart' show InviteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InviteModel extends FlutterFlowModel<InviteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for createNewStaff component.
  late CreateNewStaffModel createNewStaffModel;

  @override
  void initState(BuildContext context) {
    createNewStaffModel = createModel(context, () => CreateNewStaffModel());
  }

  @override
  void dispose() {
    createNewStaffModel.dispose();
  }
}
