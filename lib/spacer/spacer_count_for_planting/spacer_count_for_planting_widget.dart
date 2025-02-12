import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'spacer_count_for_planting_model.dart';
export 'spacer_count_for_planting_model.dart';

class SpacerCountForPlantingWidget extends StatefulWidget {
  const SpacerCountForPlantingWidget({
    super.key,
    required this.spacerPortCount,
  });

  final int? spacerPortCount;

  @override
  State<SpacerCountForPlantingWidget> createState() =>
      _SpacerCountForPlantingWidgetState();
}

class _SpacerCountForPlantingWidgetState
    extends State<SpacerCountForPlantingWidget> {
  late SpacerCountForPlantingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpacerCountForPlantingModel());

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
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0.0,
                    ),
              ),
              count: _model.spacerCountValue ??= 44,
              updateCount: (count) async {
                safeSetState(() => _model.spacerCountValue = count);
                FFAppState().spacerPlantCount =
                    FFAppState().spacerPlantCount + 1;
                safeSetState(() {});
              },
              stepSize: 1,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            ),
          ),
        ],
      ),
    );
  }
}
