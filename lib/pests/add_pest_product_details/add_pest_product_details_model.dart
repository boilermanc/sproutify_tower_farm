import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pests/sds_detail_overview/sds_detail_overview_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'add_pest_product_details_widget.dart' show AddPestProductDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPestProductDetailsModel
    extends FlutterFlowModel<AddPestProductDetailsWidget> {
  ///  Local state fields for this component.

  List<String> applicationIngredients = [];
  void addToApplicationIngredients(String item) =>
      applicationIngredients.add(item);
  void removeFromApplicationIngredients(String item) =>
      applicationIngredients.remove(item);
  void removeAtIndexFromApplicationIngredients(int index) =>
      applicationIngredients.removeAt(index);
  void insertAtIndexInApplicationIngredients(int index, String item) =>
      applicationIngredients.insert(index, item);
  void updateApplicationIngredientsAtIndex(
          int index, Function(String) updateFn) =>
      applicationIngredients[index] = updateFn(applicationIngredients[index]);

  List<String> selectedMethodsIDs = [];
  void addToSelectedMethodsIDs(String item) => selectedMethodsIDs.add(item);
  void removeFromSelectedMethodsIDs(String item) =>
      selectedMethodsIDs.remove(item);
  void removeAtIndexFromSelectedMethodsIDs(int index) =>
      selectedMethodsIDs.removeAt(index);
  void insertAtIndexInSelectedMethodsIDs(int index, String item) =>
      selectedMethodsIDs.insert(index, item);
  void updateSelectedMethodsIDsAtIndex(int index, Function(String) updateFn) =>
      selectedMethodsIDs[index] = updateFn(selectedMethodsIDs[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for sdsDocument widget.
  String? sdsDocumentValue;
  FormFieldController<String>? sdsDocumentValueController;
  // State field(s) for reEntry widget.
  FocusNode? reEntryFocusNode;
  TextEditingController? reEntryTextController;
  String? Function(BuildContext, String?)? reEntryTextControllerValidator;
  // State field(s) for preHarvest widget.
  FocusNode? preHarvestFocusNode;
  TextEditingController? preHarvestTextController;
  String? Function(BuildContext, String?)? preHarvestTextControllerValidator;
  // State field(s) for activeIngredients widget.
  FocusNode? activeIngredientsFocusNode;
  TextEditingController? activeIngredientsTextController;
  String? Function(BuildContext, String?)?
      activeIngredientsTextControllerValidator;
  // State field(s) for applicationTypeCheckboxGroup widget.
  FormFieldController<List<String>>?
      applicationTypeCheckboxGroupValueController;
  List<String>? get applicationTypeCheckboxGroupValues =>
      applicationTypeCheckboxGroupValueController?.value;
  set applicationTypeCheckboxGroupValues(List<String>? v) =>
      applicationTypeCheckboxGroupValueController?.value = v;

  // State field(s) for baseAmount widget.
  FocusNode? baseAmountFocusNode;
  TextEditingController? baseAmountTextController;
  String? Function(BuildContext, String?)? baseAmountTextControllerValidator;
  // State field(s) for baseAmountUnit widget.
  String? baseAmountUnitValue;
  FormFieldController<String>? baseAmountUnitValueController;
  // State field(s) for perVolume widget.
  FocusNode? perVolumeFocusNode;
  TextEditingController? perVolumeTextController;
  String? Function(BuildContext, String?)? perVolumeTextControllerValidator;
  // State field(s) for perVolumeUnit widget.
  String? perVolumeUnitValue;
  FormFieldController<String>? perVolumeUnitValueController;
  // State field(s) for applicationNotes widget.
  FocusNode? applicationNotesFocusNode;
  TextEditingController? applicationNotesTextController;
  String? Function(BuildContext, String?)?
      applicationNotesTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in saveDetailsnosds widget.
  ProductCustomerDetailsRow? productDetailsAdded9922;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    reEntryFocusNode?.dispose();
    reEntryTextController?.dispose();

    preHarvestFocusNode?.dispose();
    preHarvestTextController?.dispose();

    activeIngredientsFocusNode?.dispose();
    activeIngredientsTextController?.dispose();

    baseAmountFocusNode?.dispose();
    baseAmountTextController?.dispose();

    perVolumeFocusNode?.dispose();
    perVolumeTextController?.dispose();

    applicationNotesFocusNode?.dispose();
    applicationNotesTextController?.dispose();
  }
}
