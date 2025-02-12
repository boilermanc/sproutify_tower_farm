import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/produce_plants/confirm_tower_waste_no_button/confirm_tower_waste_no_button_widget.dart';
import 'dart:ui';
import 'add_harvest_basic_widget.dart' show AddHarvestBasicWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddHarvestBasicModel extends FlutterFlowModel<AddHarvestBasicWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for confirmTowerWasteNoButton component.
  late ConfirmTowerWasteNoButtonModel confirmTowerWasteNoButtonModel;

  @override
  void initState(BuildContext context) {
    confirmTowerWasteNoButtonModel =
        createModel(context, () => ConfirmTowerWasteNoButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    expandableExpandableController.dispose();
    confirmTowerWasteNoButtonModel.dispose();
  }
}
