import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:trendyol_clone/core/providers/provider_home_page/provider_women_page.dart';
import 'package:trendyol_clone/product/utils/constants.dart';

class WomenPage extends StatefulWidget {
  const WomenPage({Key? key}) : super(key: key);

  @override
  State<WomenPage> createState() => _WomenPageState();
}

class _WomenPageState extends State<WomenPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: const PageStorageKey("women"),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 100,
              width: 100.w,
              child: Stack(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100.w,
                    child: CarouselSlider.builder(
                      carouselController:
                          context.read<WomenProvider>().carouselController,
                      itemBuilder: (context, index, realIndex) {
                        return SizedBox(
                          height: 100,
                          width: 100.w,
                          child: Image.asset(
                            "$assetSliderPictures/${index + 1}.jpeg",
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                      itemCount: 6,
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          context
                              .read<WomenProvider>()
                              .changeSliderIndex(index);
                        },
                        viewportFraction: 1.0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: Consumer<WomenProvider>(
                          builder: (context, myType, child) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "${myType.sliderIndex + 1}/6",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                              ),
                            );
                          },
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 365,
          color: Colors.pink,
        ),
        Container(
          height: 465,
          color: Colors.black,
        ),
        Container(
          height: 365,
          color: Colors.pink,
        ),
        Container(
          height: 365,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
