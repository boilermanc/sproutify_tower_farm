import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/edit_initial_towers_widget.dart';
import '/components/initial_tower_count_per_row_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'initial_tower_setup_widget.dart' show InitialTowerSetupWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InitialTowerSetupModel extends FlutterFlowModel<InitialTowerSetupWidget> {
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
  // State field(s) for rowCountController widget.
  int? rowCountControllerValue;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
