import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendyol_clone/product/utils/constants.dart';
import 'package:trendyol_clone/view/home/men/page_men.dart';
import 'package:trendyol_clone/view/home/women/page_women.dart';
import '../../core/providers/provider_home_page/provider_home_page.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
    _tabController.addListener(() {
      context.read<HomeProvider>().onPageChange(_tabController.index);
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        toolbarHeight: kToolbarHeight + 20,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Theme.of(context).shadowColor, blurRadius: 2)
                ],
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.background),
            child: Center(
              child: TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 15),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    border: InputBorder.none),
              ),
            )),
        bottom: PreferredSize(
          preferredSize: Size(100.w, kToolbarHeight),
          child: Container(
              height: kToolbarHeight,
              color: Theme.of(context).colorScheme.background,
              child: Consumer<HomeProvider>(
                builder: (context, myType, child) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Row(
                        // onTap: (value) {
                        //   context.read<HomeProvider>().onPageChange(value);
                        // },
                        // controller: _tabController,
                        children: [
                          AnimatedContainer(
                            width: 20.w,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: context
                                                    .watch<HomeProvider>()
                                                    .pageindex ==
                                                0
                                            ? 4
                                            : 0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary))),
                            duration:const Duration(milliseconds: 250),
                            child: Center(
                                child: Text("Kadın",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge)),
                          ),
                        ]),
                  );
                },
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 11.0, left: defaultPadding),
            child: FloatingActionButton.small(
              onPressed: () {},
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Consumer<HomeProvider>(
        builder: (context, myType, child) {
          return TabBarView(controller: _tabController, children: [
            WomenPage(),
            MenPage(),
            Container(color: Colors.pink),
          ]);
        },
      ),
    );
  }
}
