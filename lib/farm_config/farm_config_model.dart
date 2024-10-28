import '/components/farm_contact_widget.dart';
import '/components/farm_unit_settings_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'farm_config_widget.dart' show FarmConfigWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FarmConfigModel extends FlutterFlowModel<FarmConfigWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for farmContact component.
  late FarmContactModel farmContactModel;
  // Model for farmUnitSettings component.
  late FarmUnitSettingsModel farmUnitSettingsModel;

  @override
  void initState(BuildContext context) {
    farmContactModel = createModel(context, () => FarmContactModel());
    farmUnitSettingsModel = createModel(context, () => FarmUnitSettingsModel());
  }

  @override
  void dispose() {
    farmContactModel.dispose();
    farmUnitSettingsModel.dispose();
  }
}
