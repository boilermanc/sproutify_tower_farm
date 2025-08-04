import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sproutify_a_i/mcp_a_i/ai_chat_component_m_p_c/ai_chat_component_m_p_c_widget.dart';
import 'dart:async';
import 'dart:ui';
import 'sproutify_a_i_m_c_p_widget.dart' show SproutifyAIMCPWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SproutifyAIMCPModel extends FlutterFlowModel<SproutifyAIMCPWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for aiChat_ComponentMPC component.
  late AiChatComponentMPCModel aiChatComponentMPCModel;

  @override
  void initState(BuildContext context) {
    aiChatComponentMPCModel =
        createModel(context, () => AiChatComponentMPCModel());
  }

  @override
  void dispose() {
    aiChatComponentMPCModel.dispose();
  }
}
