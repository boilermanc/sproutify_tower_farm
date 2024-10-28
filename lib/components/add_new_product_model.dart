import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_new_product_widget.dart' show AddNewProductWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddNewProductModel extends FlutterFlowModel<AddNewProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
