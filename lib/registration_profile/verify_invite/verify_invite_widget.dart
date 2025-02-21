import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/invite_verification/invite_verification_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verify_invite_model.dart';
export 'verify_invite_model.dart';

class VerifyInviteWidget extends StatefulWidget {
  const VerifyInviteWidget({
    super.key,
    required this.invitation,
  });

  final String? invitation;

  static String routeName = 'verify_invite';
  static String routePath = '/verifyInvite';

  @override
  State<VerifyInviteWidget> createState() => _VerifyInviteWidgetState();
}

class _VerifyInviteWidgetState extends State<VerifyInviteWidget> {
  late VerifyInviteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyInviteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setDarkModeSetting(context, ThemeMode.light);
      _model.invite = await InvitationsTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'id',
              widget!.invitation,
            )
            .eqOrNull(
              'status',
              'pending',
            )
            .eqOrNull(
              'used',
              false,
            ),
      );
      if (_model.invite?.firstOrNull?.used == false) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Fail!',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 18.0,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
      } else {
        context.pushNamed(
          InviteWidget.routeName,
          queryParameters: {
            'invitation': serializeParam(
              _model.invite?.firstOrNull?.id,
              ParamType.String,
            ),
            'email': serializeParam(
              _model.invite?.firstOrNull?.email,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                title: Text(
                  'Page Title',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 2.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.inviteVerificationModel,
                updateCallback: () => safeSetState(() {}),
                child: InviteVerificationWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
