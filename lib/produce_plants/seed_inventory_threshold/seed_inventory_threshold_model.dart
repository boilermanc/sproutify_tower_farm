import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/produce_plants/seed_low_stock_alert/seed_low_stock_alert_widget.dart';
import '/produce_plants/seed_max_stock_alert/seed_max_stock_alert_widget.dart';
import '/produce_plants/seed_preferred_vendor/seed_preferred_vendor_widget.dart';
import '/produce_plants/seed_reorder_point/seed_reorder_point_widget.dart';
import '/produce_plants/seed_threshold_update/seed_threshold_update_widget.dart';
import 'dart:ui';
import 'seed_inventory_threshold_widget.dart' show SeedInventoryThresholdWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SeedInventoryThresholdModel
    extends FlutterFlowModel<SeedInventoryThresholdWidget> {
  ///  Local state fields for this component.

  int? currentLowStockAlert;

  int? currentRestockLevel;

  int? currentMaxStock;

  String? currentPrefferedVendor;

  ///  State fields for stateful widgets in this component.

  // State field(s) for reorderDataTable widget.
  final reorderDataTableController =
      FlutterFlowDataTableController<FarmPlantsViewRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    reorderDataTableController.dispose();
  }
}
