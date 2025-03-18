import '';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sproutify_a_i/empty_list/empty_list_widget.dart';
import '/sproutify_a_i/writing_indicator/writing_indicator_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'ai_chat_component_widget.dart' show AiChatComponentWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AiChatComponentModel extends FlutterFlowModel<AiChatComponentWidget> {
  ///  Local state fields for this component.

  dynamic chatHistory;

  bool aiResponding = false;

  String inputContent = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Model for writingIndicator component.
  late WritingIndicatorModel writingIndicatorModel;
  // State field(s) for chatInputField widget.
  FocusNode? chatInputFieldFocusNode;
  TextEditingController? chatInputFieldTextController;
  String? Function(BuildContext, String?)?
      chatInputFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in chatInputField widget.
  ApiCallResponse? chatGPTResponse2;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in IconButton widget.
  ApiCallResponse? chatGPTResponse;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
    writingIndicatorModel = createModel(context, () => WritingIndicatorModel());
  }

  @override
  void dispose() {
    listViewController?.dispose();
    writingIndicatorModel.dispose();
    chatInputFieldFocusNode?.dispose();
    chatInputFieldTextController?.dispose();
  }
}
