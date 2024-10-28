import '/backend/supabase/supabase.dart';
import '/components/sensor_next_step_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_sensor_widget.dart' show AddSensorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddSensorModel extends FlutterFlowModel<AddSensorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for sensorType widget.
  String? sensorTypeValue;
  FormFieldController<String>? sensorTypeValueController;
  // State field(s) for sensorName widget.
  FocusNode? sensorNameFocusNode;
  TextEditingController? sensorNameTextController;
  String? Function(BuildContext, String?)? sensorNameTextControllerValidator;
  // State field(s) for sensorLocation widget.
  FocusNode? sensorLocationFocusNode;
  TextEditingController? sensorLocationTextController;
  String? Function(BuildContext, String?)?
      sensorLocationTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    sensorNameFocusNode?.dispose();
    sensorNameTextController?.dispose();

    sensorLocationFocusNode?.dispose();
    sensorLocationTextController?.dispose();
  }
}
