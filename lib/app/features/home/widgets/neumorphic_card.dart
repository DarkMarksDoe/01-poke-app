import 'package:flutter/material.dart';
import 'package:pokipoke/app/constants/app_sizes.dart';
import 'package:pokipoke/app/theme/app_shadows.dart';

/// [NeumorphicCard] is a widget that represents a pokemon card
/// using neumorphic design.
class NeumorphicCard extends StatelessWidget {
  /// [NeumorphicCard] is a Card widget with neumorphic design.
  ///
  const NeumorphicCard({super.key});

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
      child: const Padding(
        padding: EdgeInsets.all(Sizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pikachu',
              style: TextStyle(fontSize: Sizes.p8, fontWeight: FontWeight.bold),
            ),
            gapH8,
            Text('Electric Type'),
          ],
        ),
      ),
    );
  }
}
