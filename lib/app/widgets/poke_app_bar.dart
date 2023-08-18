import 'package:flutter/material.dart';
import 'package:pokipoke/app/constants/app_sizes.dart';
import 'package:pokipoke/app/theme/app_shadows.dart';
import 'package:pokipoke/app/widgets/poke_search_bar.dart';

/// [PokeAppBar] is a widget that represents the app bar
class PokeAppBar extends StatelessWidget {
  const PokeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.21,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(32),
          ),
          boxShadow: [
            AppShadows.neumorphicShadow,
            AppShadows.neumorphicShadowInverted,
          ],
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: kToolbarHeight,
            ),
            gapH16,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PokeSearchBar(),
            ),
            gapH48,
          ],
        ),
      ),
    );
  }
}
