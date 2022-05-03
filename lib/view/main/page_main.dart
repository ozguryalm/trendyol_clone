import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendyol_clone/core/providers/provider_main_page/provider_main_page.dart';
import 'package:trendyol_clone/view/home/page_home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  Widget bodyFunction(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const Center(
          child: Text("Trendyol GO"),
        );
      case 2:
        return const Center(
          child: Text("Favorilerim"),
        );
      case 3:
        return const Center(
          child: Text("Sepetim"),
        );
      case 4:
        return const Center(
          child: Text("Profilim"),
        );
      default:
        return const HomePage();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyFunction(context.watch<MainProvider>().bottombarIndex),
      bottomNavigationBar: Consumer(
        builder: (context, value, child) {
          return BottomNavigationBar(
            onTap: (value) {
              context.read<MainProvider>().onPageChange(value);
            },
            currentIndex: context.watch<MainProvider>().bottombarIndex,
            type: BottomNavigationBarType.fixed,
            iconSize: 25,
            selectedLabelStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                letterSpacing: 0,
                fontWeight: FontWeight.w300),
            unselectedLabelStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                letterSpacing: 0,
                fontWeight: FontWeight.w300),
            items: [
              buildBottomBarItem(icon: Icons.home, label: "Anasayfa"),
              buildBottomBarItem(
                  icon: Icons.grain_outlined, label: "Trenyol Go"),
              buildBottomBarItem(icon: Icons.favorite, label: "Favorilerim"),
              buildBottomBarItem(icon: Icons.shopping_cart, label: "Sepetim"),
              buildBottomBarItem(icon: Icons.person, label: "Profilim"),
            ],
          );
        },
      ),
    );
  }

  BottomNavigationBarItem buildBottomBarItem(
      {required String label, required IconData icon}) {
    return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(icon),
        ),
        label: label);
  }
}
