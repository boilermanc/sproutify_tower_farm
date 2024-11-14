import '/backend/supabase/supabase.dart';
import '/components/select_plant_catalog_quantity_widget.dart';
import '/components/select_spacer_count_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_planting_widget.dart' show AddPlantingWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPlantingModel extends FlutterFlowModel<AddPlantingWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  // State field(s) for staffMember widget.
  String? staffMemberValue;
  FormFieldController<String>? staffMemberValueController;
  // State field(s) for selectRole widget.
  String? selectRoleValue;
  FormFieldController<String>? selectRoleValueController;
  DateTime? datePicked2;
  // State field(s) for plantingInstructions widget.
  FocusNode? plantingInstructionsFocusNode;
  TextEditingController? plantingInstructionsTextController;
  String? Function(BuildContext, String?)?
      plantingInstructionsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    plantingInstructionsFocusNode?.dispose();
    plantingInstructionsTextController?.dispose();
  }
}
