import 'package:flutter/material.dart';

class OnboardingPhoto extends StatelessWidget {
  const OnboardingPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.yellow,
      ),
      // Clip the child so it respects the container's border radius and
      // use BoxFit.cover so the image fills the container while preserving
      // aspect ratio.
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        // Note: avoid giving the image infinite width/height here. If the
        // parent (for example a Column) provides unbounded height, the image
        // must either be constrained (wrap this widget with SizedBox/Expanded
        // or provide a height) or use an AspectRatio. Leaving the image
        // without explicit infinite constraints lets it size to its
        // intrinsic dimensions and prevents unbounded layout errors.
        child: Image.asset(
          'assets/images/onboarding_photo.png',
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
