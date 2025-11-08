import 'package:flutter/material.dart';

class WatchesPhoto extends StatelessWidget {
  const WatchesPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Image.asset(
          'assets/images/watches_onboarding.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
