import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'assign_spacer_task_widget.dart' show AssignSpacerTaskWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssignSpacerTaskModel extends FlutterFlowModel<AssignSpacerTaskWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for staffMember widget.
  String? staffMemberValue;
  FormFieldController<String>? staffMemberValueController;
  // State field(s) for selectRole widget.
  String? selectRoleValue;
  FormFieldController<String>? selectRoleValueController;
  // State field(s) for plantingInstructions widget.
  FocusNode? plantingInstructionsFocusNode;
  TextEditingController? plantingInstructionsTextController;
  String? Function(BuildContext, String?)?
      plantingInstructionsTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  DateTime? datePicked3;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  DateTime? datePicked4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    plantingInstructionsFocusNode?.dispose();
    plantingInstructionsTextController?.dispose();
  }
}
