import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'spacer_count_component_model.dart';
export 'spacer_count_component_model.dart';

class SpacerCountComponentWidget extends StatefulWidget {
  const SpacerCountComponentWidget({super.key});

  @override
  State<SpacerCountComponentWidget> createState() =>
      _SpacerCountComponentWidgetState();
}

class _SpacerCountComponentWidgetState
    extends State<SpacerCountComponentWidget> {
  late SpacerCountComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpacerCountComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 120.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.rectangle,
            ),
            child: FlutterFlowCountController(
              decrementIconBuilder: (enabled) => Icon(
                Icons.remove_rounded,
                color: enabled
                    ? FlutterFlowTheme.of(context).secondaryText
                    : FlutterFlowTheme.of(context).alternate,
                size: 24.0,
              ),
              incrementIconBuilder: (enabled) => Icon(
                Icons.add_rounded,
                color: enabled
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).alternate,
                size: 24.0,
              ),
              countBuilder: (count) => Text(
                count.toString(),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
              ),
              count: _model.spacerCountValue ??= FFAppState().spacerTrayPerFarm,
              updateCount: (count) async {
                safeSetState(() => _model.spacerCountValue = count);
                FFAppState().spacerPlantCount = _model.spacerCountValue!;
                safeSetState(() {});
              },
              stepSize: 1,
              maximum: FFAppState().spacerTrayPerFarm,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            ),
          ),
        ],
      ),
    );
  }
}
