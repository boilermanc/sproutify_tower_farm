import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_pest_application_widget.dart' show AddPestApplicationWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPestApplicationModel
    extends FlutterFlowModel<AddPestApplicationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for selectLocation widget.
  String? selectLocationValue;
  FormFieldController<String>? selectLocationValueController;
  // State field(s) for selectMethod widget.
  String? selectMethodValue;
  FormFieldController<String>? selectMethodValueController;
  // State field(s) for selectPesticide widget.
  String? selectPesticideValue1;
  FormFieldController<String>? selectPesticideValueController1;
  // State field(s) for addDosage widget.
  FocusNode? addDosageFocusNode;
  TextEditingController? addDosageTextController;
  String? Function(BuildContext, String?)? addDosageTextControllerValidator;
  // State field(s) for selectPesticide widget.
  String? selectPesticideValue2;
  FormFieldController<String>? selectPesticideValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addDosageFocusNode?.dispose();
    addDosageTextController?.dispose();
  }
}
