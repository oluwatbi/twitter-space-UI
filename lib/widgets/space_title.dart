import 'package:flutter/material.dart';

class SpaceTitle extends StatelessWidget {
  const SpaceTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 10),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '#IndustyExpertsTalk',
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' Learning From An Inclusive Tech Community',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          'Technology ᛫ Flutter ᛫ Development',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
