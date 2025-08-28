import '/backend/supabase/supabase.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/nutrients/update_vendor/update_vendor_widget.dart';
import '/produce_plants/addfarm_vendor/addfarm_vendor_widget.dart';
import '/produce_plants/vendor_catalog/vendor_catalog_widget.dart';
import '/products/no_vendor/no_vendor_widget.dart';
import 'dart:ui';
import 'dart:async';
import 'main_vendors_widget.dart' show MainVendorsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MainVendorsModel extends FlutterFlowModel<MainVendorsWidget> {
  ///  Local state fields for this page.

  int selectedPage = 12;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Stores action output result for [Bottom Sheet - addfarmVendor] action in addVendorButton widget.
  bool? addFarmVendor2233;
  Completer<List<FarmVendorsViewRow>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<FarmVendorsViewRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    paginatedDataTableController.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
