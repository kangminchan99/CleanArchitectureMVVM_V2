import 'package:cleanarchitecture_v2/core/di/di_setup.dart';
import 'package:cleanarchitecture_v2/core/routing/router_paths.dart';
import 'package:cleanarchitecture_v2/presentation/home/screen/home_screen.dart';
import 'package:cleanarchitecture_v2/presentation/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<HomeViewModel>();
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return HomeScreen(
          state: viewModel.state,
          name: 'Minchan',
          onSearchTap: () => context.push(RouterPaths.search),
          onSelecteCategory: viewModel.onSelectCategory,
        );
      },
    );
  }
}
