import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_status_dropdown_model.dart';
export 'order_status_dropdown_model.dart';

class OrderStatusDropdownWidget extends StatefulWidget {
  const OrderStatusDropdownWidget({
    super.key,
    required this.orderID,
  });

  final String? orderID;

  @override
  State<OrderStatusDropdownWidget> createState() =>
      _OrderStatusDropdownWidgetState();
}

class _OrderStatusDropdownWidgetState extends State<OrderStatusDropdownWidget> {
  late OrderStatusDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderStatusDropdownModel());

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
      child: FutureBuilder<List<OrderStatusesRow>>(
        future: (_model.requestCompleter ??= Completer<List<OrderStatusesRow>>()
              ..complete(OrderStatusesTable().queryRows(
                queryFn: (q) => q,
              )))
            .future,
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<OrderStatusesRow> statusDropDownOrderStatusesRowList =
              snapshot.data!;

          return FlutterFlowDropDown<int>(
            controller: _model.statusDropDownValueController ??=
                FormFieldController<int>(
              _model.statusDropDownValue ??= 1,
            ),
            options: List<int>.from(statusDropDownOrderStatusesRowList
                .map((e) => e.orderStatusId)
                .toList()),
            optionLabels: statusDropDownOrderStatusesRowList
                .map((e) => e.statusCode)
                .toList(),
            onChanged: (val) async {
              safeSetState(() => _model.statusDropDownValue = val);
              await OrdersTable().update(
                data: {
                  'order_status_id': statusDropDownOrderStatusesRowList
                      .firstOrNull?.orderStatusId,
                },
                matchingRows: (rows) => rows.eqOrNull(
                  'id',
                  widget!.orderID,
                ),
              );
              safeSetState(() => _model.requestCompleter = null);
              await _model.waitForRequestCompleted();
            },
            width: 120.0,
            height: 40.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: colorFromCssString(
                    statusDropDownOrderStatusesRowList.firstOrNull!.textColor!,
                    defaultColor: Colors.black,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
            hintText: 'Select...',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            fillColor: colorFromCssString(
              statusDropDownOrderStatusesRowList.firstOrNull!.backgroundColor!,
              defaultColor: FlutterFlowTheme.of(context).alternate,
            ),
            elevation: 2.0,
            borderColor: Colors.transparent,
            borderWidth: 0.0,
            borderRadius: 8.0,
            margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
          );
        },
      ),
    );
  }
}
