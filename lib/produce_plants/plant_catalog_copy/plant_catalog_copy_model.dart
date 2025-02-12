import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/produce_plants/plant_detail/plant_detail_widget.dart';
import 'dart:ui';
import 'plant_catalog_copy_widget.dart' show PlantCatalogCopyWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlantCatalogCopyModel extends FlutterFlowModel<PlantCatalogCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for searchPlantName widget.
  final searchPlantNameKey = GlobalKey();
  FocusNode? searchPlantNameFocusNode;
  TextEditingController? searchPlantNameTextController;
  String? searchPlantNameSelectedOption;
  String? Function(BuildContext, String?)?
      searchPlantNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchPlantNameFocusNode?.dispose();
  }
}
