import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'add_pest_application_widget.dart' show AddPestApplicationWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPestApplicationModel
    extends FlutterFlowModel<AddPestApplicationWidget> {
  ///  Local state fields for this component.

  DateTime? applicationDate;

  String? controlArea;

  String? pestChemical;

  String? controlAreaID;

  String? pestProductID;

  bool confirmSafetyRequirments = true;

  String? applicator;

  int? waterAmount;

  String? waterUnit;

  int? productAmount;

  String? productUnit;

  String selectedVolume = 'gallon';

  int multiplierEntry = 1;

  String? selectedUnit;

  String selectedDoseUnit = 'fl oz';

  int muliplier = 1;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // State field(s) for selectApplicator widget.
  String? selectApplicatorValue;
  FormFieldController<String>? selectApplicatorValueController;
  // State field(s) for selectLocation widget.
  String? selectLocationValue;
  FormFieldController<String>? selectLocationValueController;
  // State field(s) for selectProduct widget.
  String? selectProductValue;
  FormFieldController<String>? selectProductValueController;
  // Stores action output result for [Backend Call - Query Rows] action in selectProduct widget.
  List<FarmChemicalsRow>? pestProductReturn3333;
  // Stores action output result for [Custom Action - sprayCalculatorAction] action in selectProduct widget.
  bool? selectedProduct4444;
  // State field(s) for multiplierEntry widget.
  int? multiplierEntryValue;
  // Stores action output result for [Custom Action - sprayCalculatorAction] action in multiplierEntry widget.
  bool? selectedProduct5555;
  // State field(s) for waterUnit widget.
  String? waterUnitValue;
  FormFieldController<String>? waterUnitValueController;
  // Stores action output result for [Custom Action - sprayCalculatorAction] action in waterUnit widget.
  bool? selectedProduct8888;
  // State field(s) for protocols widget.
  bool? protocolsValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
