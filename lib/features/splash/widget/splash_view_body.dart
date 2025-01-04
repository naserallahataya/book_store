import 'package:book_store/conestent.dart';
import 'package:book_store/core/utils/assets_data.dart';
import 'package:book_store/features/home/preserntation/views/home_view.dart';
import 'package:book_store/features/splash/widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashviewBody extends StatefulWidget {
  const SplashviewBody({super.key});

  @override
  State<SplashviewBody> createState() => _SplashviewBodyState();
}

class _SplashviewBodyState extends State<SplashviewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    intSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void intSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 6), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTransitionDuration);
    });
  }
}
