import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/produce_plants/plant_detail/plant_detail_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'plant_catalog_widget.dart' show PlantCatalogWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PlantCatalogModel extends FlutterFlowModel<PlantCatalogWidget> {
  ///  Local state fields for this component.

  List<int> existingPlantIds = [];
  void addToExistingPlantIds(int item) => existingPlantIds.add(item);
  void removeFromExistingPlantIds(int item) => existingPlantIds.remove(item);
  void removeAtIndexFromExistingPlantIds(int index) =>
      existingPlantIds.removeAt(index);
  void insertAtIndexInExistingPlantIds(int index, int item) =>
      existingPlantIds.insert(index, item);
  void updateExistingPlantIdsAtIndex(int index, Function(int) updateFn) =>
      existingPlantIds[index] = updateFn(existingPlantIds[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in plantCatalog widget.
  List<FarmPlantsRow>? plantList9911;
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
