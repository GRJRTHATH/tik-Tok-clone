import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/main/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const MainScreen()));
        },
        child: Center(
            child: Column(
          children: [
            Image.asset(
              'assets/images/tiktok-logo.png',
              height: 150,
            ),
            Text(
              'TikTik',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold, letterSpacing: 1),
            )
          ],
        )),
      ),
    );
  }
}
