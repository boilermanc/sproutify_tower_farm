import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'add_water_test_widget.dart' show AddWaterTestWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddWaterTestModel extends FlutterFlowModel<AddWaterTestWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // State field(s) for waterSourceEntry widget.
  FocusNode? waterSourceEntryFocusNode;
  TextEditingController? waterSourceEntryTextController;
  String? Function(BuildContext, String?)?
      waterSourceEntryTextControllerValidator;
  // State field(s) for testTypeEntry widget.
  String? testTypeEntryValue;
  FormFieldController<String>? testTypeEntryValueController;
  // State field(s) for testResultEntry widget.
  FocusNode? testResultEntryFocusNode;
  TextEditingController? testResultEntryTextController;
  String? Function(BuildContext, String?)?
      testResultEntryTextControllerValidator;
  // State field(s) for testUnitEntry widget.
  String? testUnitEntryValue;
  FormFieldController<String>? testUnitEntryValueController;
  // State field(s) for testStandardEntry widget.
  String? testStandardEntryValue;
  FormFieldController<String>? testStandardEntryValueController;
  // State field(s) for complianceStatusEntry widget.
  String? complianceStatusEntryValue;
  FormFieldController<String>? complianceStatusEntryValueController;
  // State field(s) for vendorEntry widget.
  String? vendorEntryValue;
  FormFieldController<String>? vendorEntryValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    waterSourceEntryFocusNode?.dispose();
    waterSourceEntryTextController?.dispose();

    testResultEntryFocusNode?.dispose();
    testResultEntryTextController?.dispose();
  }
}
