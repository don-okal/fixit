import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/features/auth/presentation/views/choosing_view.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    FlutterNativeSplash.remove();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.to(
        ChoosingView(),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 200.h,
                image: const AssetImage(
                  fixitLogo,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.of(context).YourSolutionIsHere,
                style: Styles.textStyle28.copyWith(color: kPrimaryColor),
              ),
              LottieBuilder.asset(
                'assets/animations/Animation - 1710098562431.json',
                height: 200.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
