import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hidden_text_field_plant_i_d_model.dart';
export 'hidden_text_field_plant_i_d_model.dart';

class HiddenTextFieldPlantIDWidget extends StatefulWidget {
  const HiddenTextFieldPlantIDWidget({
    super.key,
    this.parameter1,
  });

  final int? parameter1;

  @override
  State<HiddenTextFieldPlantIDWidget> createState() =>
      _HiddenTextFieldPlantIDWidgetState();
}

class _HiddenTextFieldPlantIDWidgetState
    extends State<HiddenTextFieldPlantIDWidget> {
  late HiddenTextFieldPlantIDModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HiddenTextFieldPlantIDModel());

    _model.plantIDTextController ??=
        TextEditingController(text: widget!.parameter1?.toString());
    _model.plantIDFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: TextFormField(
        controller: _model.plantIDTextController,
        focusNode: _model.plantIDFocusNode,
        autofocus: false,
        obscureText: false,
        decoration: InputDecoration(
          isDense: true,
          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Plus Jakarta Sans',
                letterSpacing: 0.0,
              ),
          hintText: 'TextField',
          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Plus Jakarta Sans',
                letterSpacing: 0.0,
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          filled: true,
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Plus Jakarta Sans',
              letterSpacing: 0.0,
            ),
        cursorColor: FlutterFlowTheme.of(context).primaryText,
        validator: _model.plantIDTextControllerValidator.asValidator(context),
      ),
    );
  }
}
