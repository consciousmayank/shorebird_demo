import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewModel.currentIndex,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        onTap: (value) => viewModel.setIndex(value),
        items: viewModel.navBottomItems,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: viewModel.getView(),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
