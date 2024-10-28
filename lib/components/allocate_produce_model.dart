import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'allocate_produce_widget.dart' show AllocateProduceWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllocateProduceModel extends FlutterFlowModel<AllocateProduceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for customerType widget.
  String? customerTypeValue;
  FormFieldController<String>? customerTypeValueController;
  // State field(s) for setQuantity widget.
  String? setQuantityValue;
  FormFieldController<String>? setQuantityValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
