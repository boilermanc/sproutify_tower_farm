import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'add_mechanical_widget.dart' show AddMechanicalWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddMechanicalModel extends FlutterFlowModel<AddMechanicalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for equipmentName widget.
  FocusNode? equipmentNameFocusNode;
  TextEditingController? equipmentNameTextController;
  String? Function(BuildContext, String?)? equipmentNameTextControllerValidator;
  // State field(s) for categoryDropdown widget.
  String? categoryDropdownValue1;
  FormFieldController<String>? categoryDropdownValueController1;
  // State field(s) for typeDropdown widget.
  String? typeDropdownValue1;
  FormFieldController<String>? typeDropdownValueController1;
  // State field(s) for categoryDropdown widget.
  String? categoryDropdownValue2;
  FormFieldController<String>? categoryDropdownValueController2;
  // State field(s) for typeDropdown widget.
  String? typeDropdownValue2;
  FormFieldController<String>? typeDropdownValueController2;
  // State field(s) for categoryDropdown widget.
  String? categoryDropdownValue3;
  FormFieldController<String>? categoryDropdownValueController3;
  // State field(s) for typeDropdown widget.
  String? typeDropdownValue3;
  FormFieldController<String>? typeDropdownValueController3;
  // State field(s) for fueTypeDropdown widget.
  String? fueTypeDropdownValue1;
  FormFieldController<String>? fueTypeDropdownValueController1;
  // State field(s) for btuRating widget.
  FocusNode? btuRatingFocusNode1;
  TextEditingController? btuRatingTextController1;
  String? Function(BuildContext, String?)? btuRatingTextController1Validator;
  // State field(s) for fueTypeDropdown widget.
  String? fueTypeDropdownValue2;
  FormFieldController<String>? fueTypeDropdownValueController2;
  // State field(s) for btuRating widget.
  FocusNode? btuRatingFocusNode2;
  TextEditingController? btuRatingTextController2;
  String? Function(BuildContext, String?)? btuRatingTextController2Validator;
  // State field(s) for fueTypeDropdown widget.
  String? fueTypeDropdownValue3;
  FormFieldController<String>? fueTypeDropdownValueController3;
  // State field(s) for btuRating widget.
  FocusNode? btuRatingFocusNode3;
  TextEditingController? btuRatingTextController3;
  String? Function(BuildContext, String?)? btuRatingTextController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for controllerDropDown widget.
  String? controllerDropDownValue;
  FormFieldController<String>? controllerDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    equipmentNameFocusNode?.dispose();
    equipmentNameTextController?.dispose();

    btuRatingFocusNode1?.dispose();
    btuRatingTextController1?.dispose();

    btuRatingFocusNode2?.dispose();
    btuRatingTextController2?.dispose();

    btuRatingFocusNode3?.dispose();
    btuRatingTextController3?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();
  }
}
