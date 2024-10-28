import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'select_fixture_quantity_widget.dart' show SelectFixtureQuantityWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectFixtureQuantityModel
    extends FlutterFlowModel<SelectFixtureQuantityWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for allocateAmount widget.
  int? allocateAmountValue;
  FormFieldController<int>? allocateAmountValueController;
  // Stores action output result for [Backend Call - Query Rows] action in submitAllocation widget.
  List<LightingFixtureAllocationsRow>? getCurrentQuantity8877;
  // Stores action output result for [Custom Action - updateFixtureQuantity] action in submitAllocation widget.
  int? updateAmount7766;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
