import '/backend/supabase/supabase.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pest_management/deploy_new_card/deploy_new_card_widget.dart';
import '/pests/add_pest_application/add_pest_application_widget.dart';
import '/pests/no_i_p_m/no_i_p_m_widget.dart';
import '/pests/no_pest_applications/no_pest_applications_widget.dart';
import '/pests/no_sticky_card/no_sticky_card_widget.dart';
import '/pests/pest_chemicals/pest_chemicals_widget.dart';
import '/pests/pest_schedule_container/pest_schedule_container_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'main_pest_managment_widget.dart' show MainPestManagmentWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MainPestManagmentModel extends FlutterFlowModel<MainPestManagmentWidget> {
  ///  Local state fields for this page.

  int selectedPage = 9;

  int? selectedBox = 0;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for sprayMouseRegion widget.
  bool sprayMouseRegionHovered = false;
  // State field(s) for drenchingMouseRegion widget.
  bool drenchingMouseRegionHovered = false;
  // State field(s) for stickyCardMouseRegion widget.
  bool stickyCardMouseRegionHovered = false;
  // State field(s) for benificialMouseRegion widget.
  bool benificialMouseRegionHovered = false;
  // Stores action output result for [Backend Call - Query Rows] action in Tab widget.
  List<LightingZonesRow>? lightingZoneCount7755;
  // Model for pestScheduleContainer component.
  late PestScheduleContainerModel pestScheduleContainerModel;
  // Stores action output result for [Backend Call - Query Rows] action in Tab widget.
  List<LightingZonesRow>? lightingZoneCount7755Copy;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for stickyCardDataTable widget.
  final stickyCardDataTableController =
      FlutterFlowDataTableController<ActiveStickyCardsViewRow>();
  // Model for pestChemicals component.
  late PestChemicalsModel pestChemicalsModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for pestApplications widget.
  final pestApplicationsController =
      FlutterFlowDataTableController<PestRecentApplicationsRow>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for pestsObservations widget.
  final pestsObservationsController =
      FlutterFlowDataTableController<PestObservationsRow>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for diseaseObservations widget.
  final diseaseObservationsController =
      FlutterFlowDataTableController<DiseaseObservationsRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    pestScheduleContainerModel =
        createModel(context, () => PestScheduleContainerModel());
    pestChemicalsModel = createModel(context, () => PestChemicalsModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    tabBarController?.dispose();
    pestScheduleContainerModel.dispose();
    stickyCardDataTableController.dispose();
    pestChemicalsModel.dispose();
    expandableExpandableController1.dispose();
    pestApplicationsController.dispose();
    expandableExpandableController2.dispose();
    pestsObservationsController.dispose();
    expandableExpandableController3.dispose();
    diseaseObservationsController.dispose();
  }
}
