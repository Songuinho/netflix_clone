import 'package:flutter/material.dart';
import 'package:netflix/widgets/onboarding.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          leading: const Image(image: AssetImage("assets/images/symbol.png")),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'PRIVACY',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
          ],
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              children: const [
                Onboarding(
                    title: 'Unlimited movies, TV shows,  and more.',
                    subtitle: 'Watch anywhere. Cancel anytime.',
                    image: 'assets/images/obd4.jpg'),
                Onboarding(
                    title: 'There is nothing like watching movies on Netflix.',
                    subtitle: 'Plnas your watchlist for neverending story.',
                    image: 'assets/images/obd2.jpg'),
                Onboarding(
                    title:
                        'Ready to watch? Enter your email to create or restart your membership.',
                    subtitle: 'Join today, no raison to wait',
                    image: 'assets/images/obd3.jpg'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 10,
                        width: currentPage == index ? 20 : 10,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color:
                              currentPage == index ? Colors.red : Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Get started")),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
