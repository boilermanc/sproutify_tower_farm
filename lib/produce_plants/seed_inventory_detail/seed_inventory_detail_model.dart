import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/produce_plants/no_seed_lots/no_seed_lots_widget.dart';
import '/produce_plants/seed_lot_update/seed_lot_update_widget.dart';
import '/produce_plants/seed_threshold_update/seed_threshold_update_widget.dart';
import 'dart:ui';
import 'seed_inventory_detail_widget.dart' show SeedInventoryDetailWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SeedInventoryDetailModel
    extends FlutterFlowModel<SeedInventoryDetailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SeedLotsRow>();
  // Model for noSeedLots component.
  late NoSeedLotsModel noSeedLotsModel;

  @override
  void initState(BuildContext context) {
    noSeedLotsModel = createModel(context, () => NoSeedLotsModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    noSeedLotsModel.dispose();
  }
}
