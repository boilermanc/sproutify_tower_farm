import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'deploy_new_card_widget.dart' show DeployNewCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeployNewCardModel extends FlutterFlowModel<DeployNewCardWidget> {
  ///  Local state fields for this component.

  String checkIntervalValue = '0';

  String? locationID;

  String? cardType;

  ///  State fields for stateful widgets in this component.

  // State field(s) for locationDropDown widget.
  String? locationDropDownValue;
  FormFieldController<String>? locationDropDownValueController;
  // State field(s) for cardTypeDropDown widget.
  String? cardTypeDropDownValue;
  FormFieldController<String>? cardTypeDropDownValueController;
  // State field(s) for checkIntervalDropDown widget.
  String? checkIntervalDropDownValue;
  FormFieldController<String>? checkIntervalDropDownValueController;
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
