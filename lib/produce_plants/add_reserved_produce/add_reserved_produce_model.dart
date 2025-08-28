import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'add_reserved_produce_widget.dart' show AddReservedProduceWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddReservedProduceModel
    extends FlutterFlowModel<AddReservedProduceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for customerDropDown widget.
  String? customerDropDownValue;
  FormFieldController<String>? customerDropDownValueController;
  // State field(s) for orderQuantityTextField widget.
  FocusNode? orderQuantityTextFieldFocusNode;
  TextEditingController? orderQuantityTextFieldTextController;
  String? Function(BuildContext, String?)?
      orderQuantityTextFieldTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    orderQuantityTextFieldFocusNode?.dispose();
    orderQuantityTextFieldTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
