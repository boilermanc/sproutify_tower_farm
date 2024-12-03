import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/profile_update_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_component_widget.dart' show ProfileComponentWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileComponentModel extends FlutterFlowModel<ProfileComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for profileUpdateComponent component.
  late ProfileUpdateComponentModel profileUpdateComponentModel;

  @override
  void initState(BuildContext context) {
    profileUpdateComponentModel =
        createModel(context, () => ProfileUpdateComponentModel());
  }

  @override
  void dispose() {
    profileUpdateComponentModel.dispose();
  }
}
