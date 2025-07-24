import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/profile_component/profile_component_widget.dart';
import '/settings/general_farm_lighting/general_farm_lighting_widget.dart';
import '/settings/general_farm_settings/general_farm_settings_widget.dart';
import 'dart:ui';
import 'main_configuration_widget.dart' show MainConfigurationWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainConfigurationModel extends FlutterFlowModel<MainConfigurationWidget> {
  ///  Local state fields for this page.

  int selectedPage = 13;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for generalFarmLighting component.
  late GeneralFarmLightingModel generalFarmLightingModel;
  // Model for generalFarmSettings component.
  late GeneralFarmSettingsModel generalFarmSettingsModel;
  // Model for profileComponent component.
  late ProfileComponentModel profileComponentModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    generalFarmLightingModel =
        createModel(context, () => GeneralFarmLightingModel());
    generalFarmSettingsModel =
        createModel(context, () => GeneralFarmSettingsModel());
    profileComponentModel = createModel(context, () => ProfileComponentModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    generalFarmLightingModel.dispose();
    generalFarmSettingsModel.dispose();
    profileComponentModel.dispose();
  }
}
