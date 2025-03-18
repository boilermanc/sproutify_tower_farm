import '';
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
import 'add_pest_application_widget.dart' show AddPestApplicationWidget;
import 'package:flutter/foundation.dart';
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
  // State field(s) for volumeCountController widget.
  int? volumeCountControllerValue;
  // State field(s) for waterUnit widget.
  String? waterUnitValue;
  FormFieldController<String>? waterUnitValueController;
  // State field(s) for doseCountController widget.
  int? doseCountControllerValue;
  // State field(s) for productUnit widget.
  String? productUnitValue;
  FormFieldController<String>? productUnitValueController;
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
