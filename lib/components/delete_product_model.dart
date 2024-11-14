import '/backend/supabase/supabase.dart';
import '/components/no_products_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'delete_product_widget.dart' show DeleteProductWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeleteProductModel extends FlutterFlowModel<DeleteProductWidget> {
  ///  Local state fields for this component.

  bool deleteProduct = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in deleteButton widget.
  List<ProductItemsRow>? productNullCheck8291;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
