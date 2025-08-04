import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sproutify_a_i/empty_list/empty_list_widget.dart';
import '/sproutify_a_i/mcp_reponse_window/mcp_reponse_window_widget.dart';
import '/sproutify_a_i/writing_indicator_m_c_p/writing_indicator_m_c_p_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'ai_chat_component_m_p_c_widget.dart' show AiChatComponentMPCWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AiChatComponentMPCModel
    extends FlutterFlowModel<AiChatComponentMPCWidget> {
  ///  Local state fields for this component.

  dynamic chatHistory;

  bool aiResponding = true;

  String inputContent = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Model for writingIndicatorMCP component.
  late WritingIndicatorMCPModel writingIndicatorMCPModel;
  // State field(s) for chatInputField widget.
  FocusNode? chatInputFieldFocusNode;
  TextEditingController? chatInputFieldTextController;
  String? Function(BuildContext, String?)?
      chatInputFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in chatInputField widget.
  ApiCallResponse? chatGPTResponse2;
  // Stores action output result for [Backend Call - API (Send Full Prompt MCP)] action in IconButton widget.
  ApiCallResponse? apiMCPResponse3311;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
    writingIndicatorMCPModel =
        createModel(context, () => WritingIndicatorMCPModel());
  }

  @override
  void dispose() {
    listViewController?.dispose();
    writingIndicatorMCPModel.dispose();
    chatInputFieldFocusNode?.dispose();
    chatInputFieldTextController?.dispose();
  }
}
