import 'package:flutter/material.dart';
import 'package:pokipoke/app/constants/app_sizes.dart';
import 'package:pokipoke/app/theme/app_shadows.dart';

/// [NeumorphicCard] is a widget that represents a pokemon card
/// using neumorphic design.
class NeumorphicCard extends StatelessWidget {
  /// [NeumorphicCard] is a Card widget with neumorphic design.
  ///
  const NeumorphicCard({
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(Sizes.p16),
        boxShadow: [
          AppShadows.neumorphicShadow,
          AppShadows.neumorphicShadowInverted,
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: Sizes.p8, fontWeight: FontWeight.bold),
            ),
            gapH8,
            Text(subtitle),
          ],
        ),
      ),
    );
  }
}
