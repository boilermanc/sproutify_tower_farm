import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sproutify_a_i/ai_chat_component/ai_chat_component_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/index.dart';
import 'sproutify_a_i_widget.dart' show SproutifyAIWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SproutifyAIModel extends FlutterFlowModel<SproutifyAIWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for aiChat_Component component.
  late AiChatComponentModel aiChatComponentModel;

  @override
  void initState(BuildContext context) {
    aiChatComponentModel = createModel(context, () => AiChatComponentModel());
  }

  @override
  void dispose() {
    aiChatComponentModel.dispose();
  }
}
