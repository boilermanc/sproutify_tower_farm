import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_tower_widget.dart' show AddTowerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTowerModel extends FlutterFlowModel<AddTowerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for towerRow widget.
  FocusNode? towerRowFocusNode;
  TextEditingController? towerRowTextController;
  String? Function(BuildContext, String?)? towerRowTextControllerValidator;
  // State field(s) for towerNumber widget.
  FocusNode? towerNumberFocusNode;
  TextEditingController? towerNumberTextController;
  String? Function(BuildContext, String?)? towerNumberTextControllerValidator;
  // State field(s) for numberPorts widget.
  int? numberPortsValue;
  FormFieldController<int>? numberPortsValueController;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TowersRow? towerAdded8877;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    towerRowFocusNode?.dispose();
    towerRowTextController?.dispose();

    towerNumberFocusNode?.dispose();
    towerNumberTextController?.dispose();
  }
}
