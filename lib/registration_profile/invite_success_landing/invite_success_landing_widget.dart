import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/invite_success/invite_success_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'invite_success_landing_model.dart';
export 'invite_success_landing_model.dart';

class InviteSuccessLandingWidget extends StatefulWidget {
  const InviteSuccessLandingWidget({
    super.key,
    required this.invitationID,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  final String? invitationID;
  final String? firstName;
  final String? lastName;
  final String? email;

  static String routeName = 'inviteSuccessLanding';
  static String routePath = '/inviteSuccessLanding';

  @override
  State<InviteSuccessLandingWidget> createState() =>
      _InviteSuccessLandingWidgetState();
}

class _InviteSuccessLandingWidgetState
    extends State<InviteSuccessLandingWidget> {
  late InviteSuccessLandingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InviteSuccessLandingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await InvitationsTable().update(
        data: {
          'status': 'accepted',
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          widget!.invitationID,
        ),
      );
      await ProfilesTable().update(
        data: {
          'first_name': widget!.firstName,
          'last_name': widget!.lastName,
          'profile_image_url':
              'https://rsndonfydqhykowljuyn.supabase.co/storage/v1/object/public/profileImages/pics/default_profile.png',
        },
        matchingRows: (rows) => rows.eqOrNull(
          'email',
          widget!.email,
        ),
      );
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
                  'Welcome!',
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
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.inviteSuccessModel,
                    updateCallback: () => safeSetState(() {}),
                    child: InviteSuccessWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
