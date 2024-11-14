import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_plant_catalog_quantity_model.dart';
export 'select_plant_catalog_quantity_model.dart';

class SelectPlantCatalogQuantityWidget extends StatefulWidget {
  const SelectPlantCatalogQuantityWidget({super.key});

  @override
  State<SelectPlantCatalogQuantityWidget> createState() =>
      _SelectPlantCatalogQuantityWidgetState();
}

class _SelectPlantCatalogQuantityWidgetState
    extends State<SelectPlantCatalogQuantityWidget> {
  late SelectPlantCatalogQuantityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectPlantCatalogQuantityModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
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
                    fontFamily: 'Plus Jakarta Sans',
                    letterSpacing: 0.0,
                  ),
            ),
            count: _model.plantQuantityValue ??= 0,
            updateCount: (count) async {
              safeSetState(() => _model.plantQuantityValue = count);
              FFAppState().selectPlantCatalogQuantity =
                  FFAppState().selectPlantCatalogQuantity + 1;
              safeSetState(() {});
            },
            stepSize: 1,
            contentPadding:
                EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          ),
        ),
      ),
    );
  }
}
