import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/produce_plants/no_charity_available/no_charity_available_widget.dart';
import '/produce_plants/no_customer_available/no_customer_available_widget.dart';
import 'dart:ui';
import 'allocate_harvest_widget.dart' show AllocateHarvestWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllocateHarvestModel extends FlutterFlowModel<AllocateHarvestWidget> {
  ///  Local state fields for this component.

  String? customerIDSelected;

  String? charityIDSelected;

  List<String> quantityList = [];
  void addToQuantityList(String item) => quantityList.add(item);
  void removeFromQuantityList(String item) => quantityList.remove(item);
  void removeAtIndexFromQuantityList(int index) => quantityList.removeAt(index);
  void insertAtIndexInQuantityList(int index, String item) =>
      quantityList.insert(index, item);
  void updateQuantityListAtIndex(int index, Function(String) updateFn) =>
      quantityList[index] = updateFn(quantityList[index]);

  int? quantitySelected;

  DateTime? dateAllocated;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // State field(s) for quantityDropDown widget.
  String? quantityDropDownValue;
  FormFieldController<String>? quantityDropDownValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
