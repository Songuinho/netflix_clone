import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix/pages/onboarding_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key, required this.title});

  final String title;

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    loadAnimation();
  }

  loadAnimation() async {
    await Future.delayed(const Duration(seconds: 5));
    navigateToOnBoarding();
  }

  navigateToOnBoarding() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const OnboardingPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          backgroundColor: const Color(0xFF000000),
          body: Center(
            child: Lottie.asset(
              "assets/lotties/netflix.json",
              repeat: false,
            ),
          )),
    );
  }
}
