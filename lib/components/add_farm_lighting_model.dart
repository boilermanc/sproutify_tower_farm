import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/add_farm_controller_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_farm_lighting_widget.dart' show AddFarmLightingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddFarmLightingModel extends FlutterFlowModel<AddFarmLightingWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for fixtureModel widget.
  int? fixtureModelValue;
  FormFieldController<int>? fixtureModelValueController;
  // State field(s) for lightingQuanity widget.
  FocusNode? lightingQuanityFocusNode;
  TextEditingController? lightingQuanityTextController;
  String? Function(BuildContext, String?)?
      lightingQuanityTextControllerValidator;
  // State field(s) for controller widget.
  String? controllerValue;
  FormFieldController<String>? controllerValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lightingQuanityFocusNode?.dispose();
    lightingQuanityTextController?.dispose();
  }
}
