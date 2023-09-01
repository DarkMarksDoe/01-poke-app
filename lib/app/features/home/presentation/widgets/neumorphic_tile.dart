import 'package:flutter/material.dart';
import 'package:pokipoke/app/constants/app_sizes.dart';
import 'package:pokipoke/app/theme/app_shadows.dart';

/// [NeumorphicTile] is a widget that represents a pokemon card
/// using neumorphic design.
class NeumorphicTile extends StatelessWidget {
  /// [NeumorphicTile] is a Card widget with neumorphic design.
  ///
  const NeumorphicTile({
    required this.title,
    this.subtitle,
    this.imageUrl,
    super.key,
  });

  final String title;
  final String? subtitle;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Sizes.p20),
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
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.network(
              '$imageUrl',
              fit: BoxFit.contain,
              width: Sizes.p48,
              height: Sizes.p48,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error);
              },
            ),
            gapW16,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: Sizes.p16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (subtitle != null)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      gapH8,
                      Text(subtitle!),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
