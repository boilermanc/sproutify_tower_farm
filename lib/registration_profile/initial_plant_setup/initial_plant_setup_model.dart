import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/produce_plants/plant_catalog_copy/plant_catalog_copy_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'initial_plant_setup_widget.dart' show InitialPlantSetupWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InitialPlantSetupModel extends FlutterFlowModel<InitialPlantSetupWidget> {
  ///  Local state fields for this component.

  int? rowNumber;

  List<int> rowIndices = [];
  void addToRowIndices(int item) => rowIndices.add(item);
  void removeFromRowIndices(int item) => rowIndices.remove(item);
  void removeAtIndexFromRowIndices(int index) => rowIndices.removeAt(index);
  void insertAtIndexInRowIndices(int index, int item) =>
      rowIndices.insert(index, item);
  void updateRowIndicesAtIndex(int index, Function(int) updateFn) =>
      rowIndices[index] = updateFn(rowIndices[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
