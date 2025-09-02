import 'package:cleanarchitecture_v2/core/routing/router_paths.dart';
import 'package:cleanarchitecture_v2/presentation/home/home_screen.dart';
import 'package:cleanarchitecture_v2/presentation/main/main_screen.dart';
import 'package:cleanarchitecture_v2/presentation/notifications/notifications_screen.dart';
import 'package:cleanarchitecture_v2/presentation/profile/profile_screen.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/screen/saved_recipes_root.dart';
import 'package:cleanarchitecture_v2/presentation/sign_in/sign_in_screen.dart';
import 'package:cleanarchitecture_v2/presentation/sign_up/sign_up_screen.dart';
import 'package:cleanarchitecture_v2/presentation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RouterPaths.splash,
  routes: [
    GoRoute(
      path: RouterPaths.splash,
      builder: (context, state) => SplashScreen(
        onTapStartCooking: () => context.go(RouterPaths.signIn),
      ),
    ),
    GoRoute(
      path: RouterPaths.signIn,
      builder: (context, state) => SignInScreen(
        onTapSignUp: () => context.go(RouterPaths.signUp),
        onTapSignIn: () => context.go(RouterPaths.home),
      ),
    ),
    GoRoute(
      path: RouterPaths.signUp,
      builder: (context, state) => SignUpScreen(
        onTapSignIn: () => context.go(RouterPaths.signIn),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(
          body: navigationShell,
          currentPageIndex: navigationShell.currentIndex,
          onPageChanged: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPaths.home,
              builder: (context, state) => HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPaths.savedRecipes,
              builder: (context, state) => SavedRecipesRoot(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPaths.notifications,
              builder: (context, state) => NotificationsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPaths.profile,
              builder: (context, state) => ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
