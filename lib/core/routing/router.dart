import 'package:cleanarchitecture_v2/data/repository/mock_bookmark_repository_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_recipe_repository_impl.dart';
import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_saved_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:cleanarchitecture_v2/presentation/sign_in/sign_in_screen.dart';
import 'package:cleanarchitecture_v2/presentation/sign_up/sign_up_screen.dart';
import 'package:cleanarchitecture_v2/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: SplashScreen.routeURL,
  routes: [
    GoRoute(
      path: SplashScreen.routeURL,
      builder: (context, state) => SplashScreen(
        onTapStartCooking: () => context.go(SignInScreen.routeURL),
      ),
    ),
    GoRoute(
      path: SignInScreen.routeURL,
      builder: (context, state) => SignInScreen(
        onTapSignUp: () => context.go(SignUpScreen.routeURL),
        onTapSignIn: () => context.go(SavedRecipesScreen.routeURL),
      ),
    ),
    GoRoute(
      path: SignUpScreen.routeURL,
      builder: (context, state) => SignUpScreen(
        onTapSignIn: () => context.go(SignInScreen.routeURL),
      ),
    ),
    GoRoute(
      path: SavedRecipesScreen.routeURL,
      builder: (context, state) => FutureBuilder<List<RecipeModel>>(
        future: GetSavedRecipesUsecase(
          recipeRepository: MockRecipeRepositoryImpl(),
          bookmarkRepository: MockBookmarkRepositoryImpl(),
        ).execute(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }

          final recipes = asyncSnapshot.data ?? [];
          return SavedRecipesScreen(
            recipes: recipes,
          );
        },
      ),
    ),
  ],
);
