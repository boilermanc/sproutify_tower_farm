import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/no_spacers_available_widget.dart';
import '/components/select_plant_catalog_quantity_widget.dart';
import '/components/spacer_count_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_planting_widget.dart' show AddPlantingWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPlantingModel extends FlutterFlowModel<AddPlantingWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
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
