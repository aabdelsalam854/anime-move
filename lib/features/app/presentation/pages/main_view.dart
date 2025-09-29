import 'package:clean_arch_task/features/app/presentation/widgets/bottom_navigation_bar.dart';
import 'package:clean_arch_task/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  List<Widget> pages = const [
    HomeScreen(),
    Text("Library Page"),
    Text("Search Page"),
    Text("Explore Page"),
    Text("Settings Page"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, child) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) =>
                FadeTransition(opacity: animation, child: child),
            child: pages[index],
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndexListenable: selectedIndex,
        onItemTapped: (index) {
          selectedIndex.value = index;
        },
      ),
    );
  }
}
