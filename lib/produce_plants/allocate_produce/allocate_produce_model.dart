import '';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'allocate_produce_widget.dart' show AllocateProduceWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllocateProduceModel extends FlutterFlowModel<AllocateProduceWidget> {
  ///  Local state fields for this component.

  int? allocatedQuantity;

  DateTime? weekDate;

  DateTime? deliverDate;

  String? customerType;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  // State field(s) for customerType widget.
  String? customerTypeValue;
  FormFieldController<String>? customerTypeValueController;
  DateTime? datePicked2;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
