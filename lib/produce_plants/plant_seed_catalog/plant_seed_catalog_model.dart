import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'plant_seed_catalog_widget.dart' show PlantSeedCatalogWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlantSeedCatalogModel extends FlutterFlowModel<PlantSeedCatalogWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
