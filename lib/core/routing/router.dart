import 'package:cleanarchitecture_v2/core/routing/router_paths.dart';
import 'package:cleanarchitecture_v2/main.dart';
import 'package:cleanarchitecture_v2/presentation/home/root/home_root.dart';
import 'package:cleanarchitecture_v2/presentation/main/main_screen.dart';
import 'package:cleanarchitecture_v2/presentation/notifications/notifications_screen.dart';
import 'package:cleanarchitecture_v2/presentation/profile/profile_screen.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/root/saved_recipes_root.dart';
import 'package:cleanarchitecture_v2/presentation/search/root/search_root.dart';
import 'package:cleanarchitecture_v2/presentation/search/screen/search_screen.dart';
import 'package:cleanarchitecture_v2/presentation/sign_in/sign_in_screen.dart';
import 'package:cleanarchitecture_v2/presentation/sign_up/sign_up_screen.dart';
import 'package:cleanarchitecture_v2/presentation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RouterPaths.splash,
  routes: [
    GoRoute(path: RouterPaths.test, builder: (context, state) => MyHomePage()),
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
    GoRoute(
      path: RouterPaths.search,
      builder: (context, state) => SearchRoot(),
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
              builder: (context, state) => HomeRoot(),
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
