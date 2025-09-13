import 'package:cleanarchitecture_v2/data/clipboard/default_clipboard_service.dart';
import 'package:cleanarchitecture_v2/data/data_source/local/default_local_storage.dart';
import 'package:cleanarchitecture_v2/data/data_source/remote/remote_recipe_data_source_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_bookmark_repository_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_chef_repository_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_ingredient_repository_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_procedure_repository_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_recent_search_recipe_repository_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_recipe_repository_impl.dart';
import 'package:cleanarchitecture_v2/domain/clipboard/clipboard_service.dart';
import 'package:cleanarchitecture_v2/domain/data_source/local_storage.dart';
import 'package:cleanarchitecture_v2/domain/data_source/recipe_data_source.dart';
import 'package:cleanarchitecture_v2/domain/repository/bookmark_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/chef_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/ingredient_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/procedure_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/recent_search_recipe_repository.dart';
import 'package:cleanarchitecture_v2/domain/repository/recipe_repository.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_categories_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_dishes_by_category_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_new_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_saved_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/search_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/toggle_bookmark_recipe_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/home/view_model/home_view_model.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/view_model/ingredient_view_model.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/view_model/saved_recipes_view_model.dart';
import 'package:cleanarchitecture_v2/presentation/search/view_model/search_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetUp() {
  // data source
  getIt.registerSingleton<RecipeDataSource>(RemoteRecipeDataSourceImpl());
  getIt.registerSingleton<LocalStorage>(DefaultLocalStorage());

  // repository
  getIt.registerSingleton<RecipeRepository>(
    // ErrorMockRecipeRepositoryImpl(recipeDataSource: getIt()),
    MockRecipeRepositoryImpl(recipeDataSource: getIt()),
  );
  getIt.registerSingleton<BookmarkRepository>(MockBookmarkRepositoryImpl());
  getIt.registerSingleton<RecentSearchRecipeRepository>(
    MockRecentSearchRecipeRepositoryImpl(localStorage: getIt()),
  );
  getIt.registerSingleton<IngredientRepository>(
    MockIngredientRepositoryImpl(),
  );
  getIt.registerSingleton<ProcedureRepository>(
    MockProcedureRepositoryImpl(),
  );
  getIt.registerSingleton<ChefRepository>(
    MockChefRepositoryImpl(),
  );
  getIt.registerSingleton<ClipboardService>(
    DefaultClipboardService(),
  );

  // usecase
  getIt.registerSingleton(
    GetSavedRecipesUsecase(
      recipeRepository: getIt(),
      bookmarkRepository: getIt(),
    ),
  );
  getIt.registerSingleton(
    SearchRecipesUsecase(
      recipeRepository: getIt(),
      localStorage: getIt(),
    ),
  );
  getIt.registerSingleton(
    GetCategoriesUsecase(
      recipeRepository: getIt(),
    ),
  );
  getIt.registerSingleton(
    GetDishesByCategoryUsecase(
      recipeRepository: getIt(),
      bookmarkRepository: getIt(),
    ),
  );
  getIt.registerSingleton(
    GetNewRecipesUsecase(
      recipeRepository: getIt(),
    ),
  );
  getIt.registerSingleton(
    ToggleBookmarkRecipeUsecase(
      bookmarkRepository: getIt(),
      recipeRepository: getIt(),
    ),
  );

  // view model은 화면과 생명주기를 같게 해줘야 하므로 factory 패턴 사용
  getIt.registerFactory<SavedRecipesViewModel>(
    () => SavedRecipesViewModel(
      getSavedRecipesUsecase: getIt(),
      toggleBookmarkRecipeUsecase: getIt(),
    ),
  );
  getIt.registerFactory<SearchViewModel>(
    () => SearchViewModel(
      recentSearchRecipeRepository: getIt(),
      searchRecipesUsecase: getIt(),
    ),
  );
  getIt.registerFactory<HomeViewModel>(
    () => HomeViewModel(
      getCategoriesUsecase: getIt(),
      getDishesByCategoryUsecase: getIt(),
      getNewRecipesUsecase: getIt(),
      toggleBookmarkRecipeUsecase: getIt(),
    ),
  );
  getIt.registerFactory<IngredientViewModel>(
    () => IngredientViewModel(
      ingredientRepository: getIt(),
      procedureRepository: getIt(),
      getDishesByCategoryUsecase: getIt(),
      chefRepository: getIt(),
      clipboardService: getIt(),
    ),
  );
}
