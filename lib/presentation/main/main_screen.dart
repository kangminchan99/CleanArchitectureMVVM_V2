import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final Widget body;
  final int currentPageIndex;
  final void Function(int index) onPageChanged;
  const MainScreen({
    super.key,
    required this.body,
    required this.currentPageIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        // label 숨기기
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: Colors.transparent,
        onDestinationSelected: onPageChanged,
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: ColorStyles.gray4,
            ),
            selectedIcon: Stack(
              children: [
                Icon(
                  Icons.home,
                  color: ColorStyles.primary40,
                ),
                Icon(
                  Icons.home_outlined,
                  color: ColorStyles.primary100,
                ),
              ],
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.bookmark_border,
              color: ColorStyles.gray4,
            ),
            selectedIcon: Stack(
              children: [
                Icon(
                  Icons.bookmark,
                  color: ColorStyles.primary40,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: ColorStyles.primary100,
                ),
              ],
            ),
            label: 'Bookmark',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.notifications_outlined,
              color: ColorStyles.gray4,
            ),
            selectedIcon: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  color: ColorStyles.primary40,
                ),
                Icon(
                  Icons.notifications_outlined,
                  color: ColorStyles.primary100,
                ),
              ],
            ),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline,
              color: ColorStyles.gray4,
            ),
            selectedIcon: Stack(
              children: [
                Icon(
                  Icons.person,
                  color: ColorStyles.primary40,
                ),
                Icon(
                  Icons.person_outline,
                  color: ColorStyles.primary100,
                ),
              ],
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
