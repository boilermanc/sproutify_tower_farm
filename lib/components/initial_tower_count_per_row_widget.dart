import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'initial_tower_count_per_row_model.dart';
export 'initial_tower_count_per_row_model.dart';

class InitialTowerCountPerRowWidget extends StatefulWidget {
  const InitialTowerCountPerRowWidget({
    super.key,
    required this.rowID,
  });

  final int? rowID;

  @override
  State<InitialTowerCountPerRowWidget> createState() =>
      _InitialTowerCountPerRowWidgetState();
}

class _InitialTowerCountPerRowWidgetState
    extends State<InitialTowerCountPerRowWidget> {
  late InitialTowerCountPerRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialTowerCountPerRowModel());

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
      width: 150.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Container(
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
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          count: _model.towerCountControllerValue ??= 0,
          updateCount: (count) async {
            safeSetState(() => _model.towerCountControllerValue = count);
            FFAppState().towerCounts = functions
                .updateTowerCountAtIndex(FFAppState().towerCounts.toList(),
                    widget!.rowID, _model.towerCountControllerValue)!
                .toList()
                .cast<int>();
            safeSetState(() {});
          },
          stepSize: 1,
          contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        ),
      ),
    );
  }
}
