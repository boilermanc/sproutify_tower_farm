import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/products/add_chemical/add_chemical_widget.dart';
import 'dart:ui';
import 'chemical_catalog_widget.dart' show ChemicalCatalogWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChemicalCatalogModel extends FlutterFlowModel<ChemicalCatalogWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for searchChemicalName widget.
  final searchChemicalNameKey = GlobalKey();
  FocusNode? searchChemicalNameFocusNode;
  TextEditingController? searchChemicalNameTextController;
  String? searchChemicalNameSelectedOption;
  String? Function(BuildContext, String?)?
      searchChemicalNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchChemicalNameFocusNode?.dispose();
  }
}
