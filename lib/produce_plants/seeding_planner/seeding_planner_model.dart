import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'seeding_planner_widget.dart' show SeedingPlannerWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeedingPlannerModel extends FlutterFlowModel<SeedingPlannerWidget> {
  ///  Local state fields for this component.

  String selectedStatus = 'All';

  List<int> selectedTowerIDs = [];
  void addToSelectedTowerIDs(int item) => selectedTowerIDs.add(item);
  void removeFromSelectedTowerIDs(int item) => selectedTowerIDs.remove(item);
  void removeAtIndexFromSelectedTowerIDs(int index) =>
      selectedTowerIDs.removeAt(index);
  void insertAtIndexInSelectedTowerIDs(int index, int item) =>
      selectedTowerIDs.insert(index, item);
  void updateSelectedTowerIDsAtIndex(int index, Function(int) updateFn) =>
      selectedTowerIDs[index] = updateFn(selectedTowerIDs[index]);

  int? selectedPlantID;

  List<int> selectedTowerIds = [];
  void addToSelectedTowerIds(int item) => selectedTowerIds.add(item);
  void removeFromSelectedTowerIds(int item) => selectedTowerIds.remove(item);
  void removeAtIndexFromSelectedTowerIds(int index) =>
      selectedTowerIds.removeAt(index);
  void insertAtIndexInSelectedTowerIds(int index, int item) =>
      selectedTowerIds.insert(index, item);
  void updateSelectedTowerIdsAtIndex(int index, Function(int) updateFn) =>
      selectedTowerIds[index] = updateFn(selectedTowerIds[index]);

  int? overagePercent = 10;

  int? totalPorts = 0;

  int? seedsPerPort = 1;

  int? towerCount = 1;

  int? selectedPortCount;

  int? selectedPlantId = 1;

  dynamic calculationResults;

  int? portsPerTower = 44;

  bool showResults = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for seedDropDown widget.
  int? seedDropDownValue;
  FormFieldController<int>? seedDropDownValueController;
  // Stores action output result for [Custom Action - calculateSeeding] action in seedDropDown widget.
  dynamic? seedingNeeded4433;
  // State field(s) for towerCount widget.
  FocusNode? towerCountFocusNode;
  TextEditingController? towerCountTextController;
  String? Function(BuildContext, String?)? towerCountTextControllerValidator;
  // State field(s) for portCountDropDown widget.
  int? portCountDropDownValue;
  FormFieldController<int>? portCountDropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    towerCountFocusNode?.dispose();
    towerCountTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }
}
