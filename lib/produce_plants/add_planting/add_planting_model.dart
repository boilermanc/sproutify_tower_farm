import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/produce_plants/no_plants/no_plants_widget.dart';
import '/spacer/no_spacers_available/no_spacers_available_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'add_planting_widget.dart' show AddPlantingWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPlantingModel extends FlutterFlowModel<AddPlantingWidget> {
  ///  Local state fields for this component.

  int? availablePorts;

  int? setAvailablePorts;

  ///  State fields for stateful widgets in this component.

  // State field(s) for searchPlants widget.
  FocusNode? searchPlantsFocusNode;
  TextEditingController? searchPlantsTextController;
  String? Function(BuildContext, String?)? searchPlantsTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for plantingInstructions widget.
  FocusNode? plantingInstructionsFocusNode;
  TextEditingController? plantingInstructionsTextController;
  String? Function(BuildContext, String?)?
      plantingInstructionsTextControllerValidator;
  // Model for noPlants component.
  late NoPlantsModel noPlantsModel;

  @override
  void initState(BuildContext context) {
    noPlantsModel = createModel(context, () => NoPlantsModel());
  }

  @override
  void dispose() {
    searchPlantsFocusNode?.dispose();
    searchPlantsTextController?.dispose();

    plantingInstructionsFocusNode?.dispose();
    plantingInstructionsTextController?.dispose();

    noPlantsModel.dispose();
  }
}
