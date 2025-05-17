import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fixture_allocation_counter_model.dart';
export 'fixture_allocation_counter_model.dart';

class FixtureAllocationCounterWidget extends StatefulWidget {
  const FixtureAllocationCounterWidget({
    super.key,
    this.fixtureAllocation,
    required this.zoneID,
  });

  final int? fixtureAllocation;
  final String? zoneID;

  @override
  State<FixtureAllocationCounterWidget> createState() =>
      _FixtureAllocationCounterWidgetState();
}

class _FixtureAllocationCounterWidgetState
    extends State<FixtureAllocationCounterWidget> {
  late FixtureAllocationCounterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FixtureAllocationCounterModel());

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

    return Visibility(
      visible: FFAppState().zoneSelected == true,
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
          count: _model.fixtureCountControllerValue ??=
              widget!.fixtureAllocation!,
          updateCount: (count) async {
            safeSetState(() => _model.fixtureCountControllerValue = count);
            await LightingFixtureAllocationsTable().update(
              data: {
                'quantity': _model.fixtureCountControllerValue,
              },
              matchingRows: (rows) => rows.eqOrNull(
                'id',
                widget!.zoneID,
              ),
            );
          },
          stepSize: 1,
          contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        ),
      ),
    );
  }
}
