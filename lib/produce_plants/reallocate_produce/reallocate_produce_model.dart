import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'reallocate_produce_widget.dart' show ReallocateProduceWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReallocateProduceModel extends FlutterFlowModel<ReallocateProduceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for customerDropDown widget.
  String? customerDropDownValue;
  FormFieldController<String>? customerDropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for wasteQuanityTextField widget.
  FocusNode? wasteQuanityTextFieldFocusNode;
  TextEditingController? wasteQuanityTextFieldTextController;
  String? Function(BuildContext, String?)?
      wasteQuanityTextFieldTextControllerValidator;
  // State field(s) for wasteDropDown widget.
  String? wasteDropDownValue;
  FormFieldController<String>? wasteDropDownValueController;
  // State field(s) for wasteNotesTextField widget.
  FocusNode? wasteNotesTextFieldFocusNode1;
  TextEditingController? wasteNotesTextFieldTextController1;
  String? Function(BuildContext, String?)?
      wasteNotesTextFieldTextController1Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for donateQuanityTextField widget.
  FocusNode? donateQuanityTextFieldFocusNode;
  TextEditingController? donateQuanityTextFieldTextController;
  String? Function(BuildContext, String?)?
      donateQuanityTextFieldTextControllerValidator;
  // State field(s) for locationDropDown widget.
  String? locationDropDownValue;
  FormFieldController<String>? locationDropDownValueController;
  // State field(s) for wasteNotesTextField widget.
  FocusNode? wasteNotesTextFieldFocusNode2;
  TextEditingController? wasteNotesTextFieldTextController2;
  String? Function(BuildContext, String?)?
      wasteNotesTextFieldTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    expandableExpandableController2.dispose();
    wasteQuanityTextFieldFocusNode?.dispose();
    wasteQuanityTextFieldTextController?.dispose();

    wasteNotesTextFieldFocusNode1?.dispose();
    wasteNotesTextFieldTextController1?.dispose();

    expandableExpandableController3.dispose();
    donateQuanityTextFieldFocusNode?.dispose();
    donateQuanityTextFieldTextController?.dispose();

    wasteNotesTextFieldFocusNode2?.dispose();
    wasteNotesTextFieldTextController2?.dispose();
  }
}
