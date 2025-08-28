import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'vendor_catalog_widget.dart' show VendorCatalogWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorCatalogModel extends FlutterFlowModel<VendorCatalogWidget> {
  ///  Local state fields for this component.

  List<String> existingVendors = [];
  void addToExistingVendors(String item) => existingVendors.add(item);
  void removeFromExistingVendors(String item) => existingVendors.remove(item);
  void removeAtIndexFromExistingVendors(int index) =>
      existingVendors.removeAt(index);
  void insertAtIndexInExistingVendors(int index, String item) =>
      existingVendors.insert(index, item);
  void updateExistingVendorsAtIndex(int index, Function(String) updateFn) =>
      existingVendors[index] = updateFn(existingVendors[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in vendorCatalog widget.
  List<FarmVendorsRow>? vendorLIst9933;
  // State field(s) for searchVendor widget.
  final searchVendorKey = GlobalKey();
  FocusNode? searchVendorFocusNode;
  TextEditingController? searchVendorTextController;
  String? searchVendorSelectedOption;
  String? Function(BuildContext, String?)? searchVendorTextControllerValidator;
  // State field(s) for vendorDataTable widget.
  final vendorDataTableController = FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - Insert Row] action in addtoFarmContainer widget.
  FarmVendorsRow? vendorIsActive7777;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchVendorFocusNode?.dispose();

    vendorDataTableController.dispose();
  }
}
