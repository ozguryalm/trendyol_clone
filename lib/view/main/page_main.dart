import 'package:flutter/material.dart';
import 'package:trendyol_clone/view/home/page_home.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
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
          buildBottomBarItem(icon: Icons.grain_outlined, label: "Trenyol Go"),
          buildBottomBarItem(icon: Icons.favorite, label: "Favorilerim"),
          buildBottomBarItem(icon: Icons.shopping_cart, label: "Sepetim"),
          buildBottomBarItem(icon: Icons.person, label: "Profilim"),
        ],
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
