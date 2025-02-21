import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : MainLoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : MainLoginWidget(),
        ),
        FFRoute(
          name: MainStaffWidget.routeName,
          path: MainStaffWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Staff')
              : MainStaffWidget(),
        ),
        FFRoute(
          name: MainRecentOrdersWidget.routeName,
          path: MainRecentOrdersWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_RecentOrders')
              : MainRecentOrdersWidget(),
        ),
        FFRoute(
          name: MainProfileWidget.routeName,
          path: MainProfileWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Profile')
              : MainProfileWidget(),
        ),
        FFRoute(
          name: MainDashboardWidget.routeName,
          path: MainDashboardWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Dashboard')
              : MainDashboardWidget(),
        ),
        FFRoute(
          name: MainLoginWidget.routeName,
          path: MainLoginWidget.routePath,
          builder: (context, params) => MainLoginWidget(),
        ),
        FFRoute(
          name: MainWaterManagementWidget.routeName,
          path: MainWaterManagementWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_waterManagement')
              : MainWaterManagementWidget(),
        ),
        FFRoute(
          name: MainSensorsWidget.routeName,
          path: MainSensorsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Sensors')
              : MainSensorsWidget(),
        ),
        FFRoute(
          name: MainPlantsWidget.routeName,
          path: MainPlantsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Plants')
              : MainPlantsWidget(),
        ),
        FFRoute(
          name: MainVendorsWidget.routeName,
          path: MainVendorsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_vendors')
              : MainVendorsWidget(),
        ),
        FFRoute(
          name: MainPestManagmentWidget.routeName,
          path: MainPestManagmentWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_PestManagment')
              : MainPestManagmentWidget(),
        ),
        FFRoute(
          name: MainCustomersWidget.routeName,
          path: MainCustomersWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Customers')
              : MainCustomersWidget(),
        ),
        FFRoute(
          name: CreateAccountWidget.routeName,
          path: CreateAccountWidget.routePath,
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: SignUpFlowWidget.routeName,
          path: SignUpFlowWidget.routePath,
          builder: (context, params) => SignUpFlowWidget(),
        ),
        FFRoute(
          name: NavigateAfterSignupWidget.routeName,
          path: NavigateAfterSignupWidget.routePath,
          builder: (context, params) => NavigateAfterSignupWidget(),
        ),
        FFRoute(
          name: SignUpFlowOneWidget.routeName,
          path: SignUpFlowOneWidget.routePath,
          builder: (context, params) => SignUpFlowOneWidget(),
        ),
        FFRoute(
          name: SignUpFlowTwoWidget.routeName,
          path: SignUpFlowTwoWidget.routePath,
          builder: (context, params) => SignUpFlowTwoWidget(),
        ),
        FFRoute(
          name: SignUpFlowFinalWidget.routeName,
          path: SignUpFlowFinalWidget.routePath,
          builder: (context, params) => SignUpFlowFinalWidget(),
        ),
        FFRoute(
          name: MainLightManagementWidget.routeName,
          path: MainLightManagementWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_LightManagement')
              : MainLightManagementWidget(
                  selectedFixtureQuantity: params.getParam(
                    'selectedFixtureQuantity',
                    ParamType.int,
                  ),
                ),
        ),
        FFRoute(
          name: LightingEquipmentWidget.routeName,
          path: LightingEquipmentWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'lightingEquipment')
              : LightingEquipmentWidget(),
        ),
        FFRoute(
          name: FoodSafetyPlanflowWidget.routeName,
          path: FoodSafetyPlanflowWidget.routePath,
          builder: (context, params) => FoodSafetyPlanflowWidget(),
        ),
        FFRoute(
          name: MainMechanicalWidget.routeName,
          path: MainMechanicalWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Mechanical')
              : MainMechanicalWidget(),
        ),
        FFRoute(
          name: MainProductsWidget.routeName,
          path: MainProductsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_products')
              : MainProductsWidget(),
        ),
        FFRoute(
          name: MainNutrientsWidget.routeName,
          path: MainNutrientsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Nutrients')
              : MainNutrientsWidget(),
        ),
        FFRoute(
          name: MainSettingsWidget.routeName,
          path: MainSettingsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Settings')
              : MainSettingsWidget(),
        ),
        FFRoute(
          name: MainFarmOperationsWidget.routeName,
          path: MainFarmOperationsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_FarmOperations')
              : MainFarmOperationsWidget(),
        ),
        FFRoute(
          name: MainConfigurationWidget.routeName,
          path: MainConfigurationWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'main_Configuration')
              : MainConfigurationWidget(),
        ),
        FFRoute(
          name: ChatAiScreenWidget.routeName,
          path: ChatAiScreenWidget.routePath,
          builder: (context, params) => ChatAiScreenWidget(),
        ),
        FFRoute(
          name: InviteWidget.routeName,
          path: InviteWidget.routePath,
          builder: (context, params) => InviteWidget(
            invitation: params.getParam(
              'invitation',
              ParamType.String,
            ),
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: VerifyInviteWidget.routeName,
          path: VerifyInviteWidget.routePath,
          builder: (context, params) => VerifyInviteWidget(
            invitation: params.getParam(
              'invitation',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: InviteSuccessLandingWidget.routeName,
          path: InviteSuccessLandingWidget.routePath,
          builder: (context, params) => InviteSuccessLandingWidget(
            invitationID: params.getParam(
              'invitationID',
              ParamType.String,
            ),
            firstName: params.getParam(
              'firstName',
              ParamType.String,
            ),
            lastName: params.getParam(
              'lastName',
              ParamType.String,
            ),
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/mainLogin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/DALLE_2025-02-12_07.02.43_-_A_photorealistic_image_of_fresh_green_lettuce_leaves_falling_through_the_air,_with_water_droplets_splashing_around_them._The_background_is_a_smooth,_n.webp',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
