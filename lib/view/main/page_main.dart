import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendyol_clone/view/home/page_home.dart';

import '../../core/providers/provider_home_page/provider_home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(
      initialIndex: context.watch<HomeProvider>().pageindex,
      vsync: this,
      length: 3);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grain_outlined), label: "Trenyol Go"),
        ],
        
      ),
    );
  }
}
