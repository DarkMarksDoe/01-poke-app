import 'package:flutter/material.dart';
import 'package:pokipoke/app/constants/app_sizes.dart';
import 'package:pokipoke/app/theme/app_shadows.dart';

/// [PokeSearchBar] is a widget that represents a search bar
/// using neumorphic design.
class PokeSearchBar extends StatelessWidget {
  /// [PokeSearchBar] is an search bar widget with neumorphic design.
  /// This widget is used among the app
  ///
  const PokeSearchBar({super.key, required this.onChanged});

  /// [onChanged] is the callback that is called when the user types in the search bar.
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          AppShadows.neumorphicShadow,
          AppShadows.neumorphicShadowInverted,
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: Sizes.p4, left: Sizes.p16),
        child: TextField(
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
          style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.search,
              color: Colors.grey[500],
            ),
            hintText: 'Search a cute pokemon',
            hintStyle: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w500,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
