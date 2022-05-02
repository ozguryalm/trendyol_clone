import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendyol_clone/product/utils/constants.dart';
import 'package:trendyol_clone/view/home/all_categories/page_all_categories.dart';
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
  @override
  void initState() {
    context.read<HomeProvider>().tabController =
        TabController(length: 3, vsync: this);
    context.read<HomeProvider>().tabController.addListener(() {
      context
          .read<HomeProvider>()
          .onPageChange(context.read<HomeProvider>().tabController.index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        toolbarHeight: kToolbarHeight + 20,
        backgroundColor: Theme.of(context).backgroundColor,
        automaticallyImplyLeading: false,
        leading: null,
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
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    hintText: "Marka,ürün veya kategori ara",
                    contentPadding: const EdgeInsets.only(top: 15),
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
                          GestureDetector(
                            onTap: () {
                              context.read<HomeProvider>().onPageChange(0);
                            },
                            child: AnimatedContainer(
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
                              duration: const Duration(milliseconds: 250),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: defaultPadding),
                                child: Center(
                                    child: Text("Kadın",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                color: context
                                                            .watch<
                                                                HomeProvider>()
                                                            .pageindex ==
                                                        0
                                                    ? orangeColor
                                                    : null))),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              context.read<HomeProvider>().onPageChange(1);
                            },
                            child: AnimatedContainer(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: context
                                                      .watch<HomeProvider>()
                                                      .pageindex ==
                                                  1
                                              ? 4
                                              : 0,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary))),
                              duration: const Duration(milliseconds: 250),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: defaultPadding),
                                child: Center(
                                    child: Text("Erkek",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                color: context
                                                            .watch<
                                                                HomeProvider>()
                                                            .pageindex ==
                                                        1
                                                    ? orangeColor
                                                    : null))),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              context.read<HomeProvider>().onPageChange(
                                  context.read<HomeProvider>().pageIndex == 2
                                      ? context
                                          .read<HomeProvider>()
                                          .pageOldindex
                                      : 2);
                            },
                            child: AnimatedContainer(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: context
                                                      .watch<HomeProvider>()
                                                      .pageindex ==
                                                  2
                                              ? 4
                                              : 0,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary))),
                              duration: const Duration(milliseconds: 250),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: defaultPadding),
                                child: Center(
                                    child: Row(
                                  children: [
                                    Text("Tüm Kategoriler",
                                        maxLines: 1,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                color: context
                                                            .watch<
                                                                HomeProvider>()
                                                            .pageindex ==
                                                        2
                                                    ? orangeColor
                                                    : null)),
                                  ],
                                )),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.read<HomeProvider>().onPageChange(
                                  context.read<HomeProvider>().pageIndex == 2
                                      ? context
                                          .read<HomeProvider>()
                                          .pageOldindex
                                      : 2);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 150),
                                child: CircleAvatar(
                                    backgroundColor: orangeColorLight,
                                    maxRadius: 12,
                                    child: Center(
                                      child: Consumer(
                                          builder: (context, myType, child) {
                                        return Icon(
                                          context
                                                  .watch<HomeProvider>()
                                                  .allCategoriesIsOpen
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: orangeColor,
                                        );
                                      }),
                                    )),
                              ),
                            ),
                          )
                        ]),
                  );
                },
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 11.0, left: defaultPadding),
            child: GestureDetector(
              child: const CircleAvatar(
                backgroundColor: orangeColor,
                maxRadius: 15,
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: Consumer<HomeProvider>(
        builder: (context, myType, child) {
          return TabBarView(
              controller: context.read<HomeProvider>().tabController,
              children: const [WomenPage(), MenPage(), AllCategoriesPage()]);
        },
      ),
    );
  }
}
