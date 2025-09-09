import 'dart:async';

import 'package:cleanarchitecture_v2/core/di/di_setup.dart';
import 'package:cleanarchitecture_v2/core/routing/router_paths.dart';
import 'package:cleanarchitecture_v2/presentation/home/action/home_action.dart';
import 'package:cleanarchitecture_v2/presentation/home/screen/home_screen.dart';
import 'package:cleanarchitecture_v2/presentation/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeRoot extends StatefulWidget {
  const HomeRoot({super.key});

  @override
  State<HomeRoot> createState() => _HomeRootState();
}

class _HomeRootState extends State<HomeRoot> {
  late HomeViewModel viewModel;
  StreamSubscription? eventSubscription;

  @override
  void initState() {
    super.initState();
    viewModel = getIt<HomeViewModel>();

    // error message 처리
    eventSubscription = viewModel.eventStream.listen((event) {
      if (!mounted) return;
      final snackBar = SnackBar(content: Text(event.toString()));

      ScaffoldMessenger.of(context).showSnackBar(
        snackBar,
      );
    });
  }

  @override
  void dispose() {
    eventSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return HomeScreen(
          state: viewModel.state,
          onAction: (HomeAction homeAction) {
            if (homeAction is OnSearchTapped) {
              context.push(RouterPaths.search);
              return;
            }
            viewModel.onAction(homeAction);
          },
        );
      },
    );
  }
}
