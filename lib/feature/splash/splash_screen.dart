import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nexcoin/shared/app_router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      context.router.popAndPush(const MainRoute());
    });
  }
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Align(
          alignment: const Alignment(-.2, -.1),
            child: Lottie.asset('assets/splash.json')),
      );
}
