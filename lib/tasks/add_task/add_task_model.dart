import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/tasks/insert_task_role/insert_task_role_widget.dart';
import '/tasks/insert_task_staff/insert_task_staff_widget.dart';
import '/tasks/recurring_task_summary/recurring_task_summary_widget.dart';
import 'dart:ui';
import 'add_task_widget.dart' show AddTaskWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddTaskModel extends FlutterFlowModel<AddTaskWidget> {
  ///  Local state fields for this component.

  String? searchTerm;

  bool frequency = true;

  int? repeatPattern = 1;

  List<int> selectedDays = [];
  void addToSelectedDays(int item) => selectedDays.add(item);
  void removeFromSelectedDays(int item) => selectedDays.remove(item);
  void removeAtIndexFromSelectedDays(int index) => selectedDays.removeAt(index);
  void insertAtIndexInSelectedDays(int index, int item) =>
      selectedDays.insert(index, item);
  void updateSelectedDaysAtIndex(int index, Function(int) updateFn) =>
      selectedDays[index] = updateFn(selectedDays[index]);

  bool mondaySelected = false;

  bool tuesdaySelected = false;

  bool wedSelected = false;

  bool thursdaySelected = false;

  bool fridaySelected = false;

  bool saturdaySelected = false;

  bool sundaySelected = false;

  bool noEndDate = false;

  DateTime? dailyDueTime;

  DateTime? startDate;

  DateTime? endDate;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for searchTasks widget.
  FocusNode? searchTasksFocusNode;
  TextEditingController? searchTasksTextController;
  String? Function(BuildContext, String?)? searchTasksTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for selectTower widget.
  int? selectTowerValue;
  FormFieldController<int>? selectTowerValueController;
  // State field(s) for notesInputField widget.
  FocusNode? notesInputFieldFocusNode;
  TextEditingController? notesInputFieldTextController;
  String? Function(BuildContext, String?)?
      notesInputFieldTextControllerValidator;
  // State field(s) for dailyTextField widget.
  FocusNode? dailyTextFieldFocusNode;
  TextEditingController? dailyTextFieldTextController;
  String? Function(BuildContext, String?)?
      dailyTextFieldTextControllerValidator;
  // State field(s) for setWeeklyDayTextField widget.
  FocusNode? setWeeklyDayTextFieldFocusNode;
  TextEditingController? setWeeklyDayTextFieldTextController;
  String? Function(BuildContext, String?)?
      setWeeklyDayTextFieldTextControllerValidator;
  // State field(s) for taskMonthlyInterval widget.
  FocusNode? taskMonthlyIntervalFocusNode;
  TextEditingController? taskMonthlyIntervalTextController;
  String? Function(BuildContext, String?)?
      taskMonthlyIntervalTextControllerValidator;
  // State field(s) for montDayTextField widget.
  FocusNode? montDayTextFieldFocusNode;
  TextEditingController? montDayTextFieldTextController;
  String? Function(BuildContext, String?)?
      montDayTextFieldTextControllerValidator;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTasksFocusNode?.dispose();
    searchTasksTextController?.dispose();

    notesInputFieldFocusNode?.dispose();
    notesInputFieldTextController?.dispose();

    dailyTextFieldFocusNode?.dispose();
    dailyTextFieldTextController?.dispose();

    setWeeklyDayTextFieldFocusNode?.dispose();
    setWeeklyDayTextFieldTextController?.dispose();

    taskMonthlyIntervalFocusNode?.dispose();
    taskMonthlyIntervalTextController?.dispose();

    montDayTextFieldFocusNode?.dispose();
    montDayTextFieldTextController?.dispose();
  }
}
