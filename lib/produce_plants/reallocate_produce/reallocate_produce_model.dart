import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
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
  // State field(s) for quanityTextField widget.
  FocusNode? quanityTextFieldFocusNode;
  TextEditingController? quanityTextFieldTextController;
  String? Function(BuildContext, String?)?
      quanityTextFieldTextControllerValidator;
  // State field(s) for noteTextField widget.
  FocusNode? noteTextFieldFocusNode;
  TextEditingController? noteTextFieldTextController;
  String? Function(BuildContext, String?)? noteTextFieldTextControllerValidator;
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
  FocusNode? wasteNotesTextFieldFocusNode;
  TextEditingController? wasteNotesTextFieldTextController;
  String? Function(BuildContext, String?)?
      wasteNotesTextFieldTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for donateQuanityTextField widget.
  FocusNode? donateQuanityTextFieldFocusNode;
  TextEditingController? donateQuanityTextFieldTextController;
  String? Function(BuildContext, String?)?
      donateQuanityTextFieldTextControllerValidator;
  // State field(s) for donationDropDown widget.
  String? donationDropDownValue;
  FormFieldController<String>? donationDropDownValueController;
  // State field(s) for donationNotesTextField widget.
  FocusNode? donationNotesTextFieldFocusNode;
  TextEditingController? donationNotesTextFieldTextController;
  String? Function(BuildContext, String?)?
      donationNotesTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    quanityTextFieldFocusNode?.dispose();
    quanityTextFieldTextController?.dispose();

    noteTextFieldFocusNode?.dispose();
    noteTextFieldTextController?.dispose();

    expandableExpandableController2.dispose();
    wasteQuanityTextFieldFocusNode?.dispose();
    wasteQuanityTextFieldTextController?.dispose();

    wasteNotesTextFieldFocusNode?.dispose();
    wasteNotesTextFieldTextController?.dispose();

    expandableExpandableController3.dispose();
    donateQuanityTextFieldFocusNode?.dispose();
    donateQuanityTextFieldTextController?.dispose();

    donationNotesTextFieldFocusNode?.dispose();
    donationNotesTextFieldTextController?.dispose();
  }
}
