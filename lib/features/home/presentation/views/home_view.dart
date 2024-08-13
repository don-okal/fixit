import 'package:carousel_slider/carousel_slider.dart' as src;
import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/features/home/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:fixit/features/home/presentation/widgets/offer_item.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  final src.CarouselSliderController _carouselController =
      src.CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              primary: false,
              backgroundColor: Colors.white,
              foregroundColor: Colors.white,
              automaticallyImplyLeading: false,
              expandedHeight: 120,
              toolbarHeight: 150,
              flexibleSpace: CustomSliverAppBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                S.of(context).todaysOffer,
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20.h,
              ),
            ),
            SliverToBoxAdapter(
              child: src.CarouselSlider.builder(
                carouselController: _carouselController,
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return const OfferItem();
                },
                options: src.CarouselOptions(
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  autoPlay: true,
                  viewportFraction: 1,
                  height: 145.h,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 16.h,
                  ),
                  child: AnimatedSmoothIndicator(
                    activeIndex: _currentIndex,
                    count: 3,
                    effect: WormEffect(
                      dotColor: const Color(0xffC4C4C4),
                      activeDotColor: kPrimaryColor,
                      dotHeight: 8.h,
                      dotWidth: 8.w,
                      type: WormType.thin,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
