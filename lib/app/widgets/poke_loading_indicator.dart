import 'package:flutter/material.dart';
import 'package:pokipoke/app/constants/app_sizes.dart';
import 'package:pokipoke/app/theme/app_colors.dart';
import 'package:pokipoke/app/theme/app_shadows.dart';

/// [PokeLoadingIndicator] is a custom Circular Progress Indicator.
/// It is designed with the neumorphic design in mind.
///
class PokeLoadingIndicator extends StatefulWidget {
  /// [PokeLoadingIndicator] is a custom Circular Progress Indicator.
  ///
  /// This widget displays a circular progress indicator custom colors and
  /// animation.
  /// It shows the percentage of completion of a task.
  ///
  /// The indicator animates continuously using an [AnimationController].
  const PokeLoadingIndicator({
    required this.duration,
    super.key,
  });

  /// The duration of the animation loop.
  ///
  /// The animation completes one full loop within the time specified by this
  /// duration.
  /// A shorter duration creates a faster animation, while a longer duration
  /// results in a slower animation effect.
  ///
  /// For example, if [duration] is set to `Duration(seconds: 2)`, the animation
  /// will complete one cycle in 2 seconds.

  final Duration duration;

  @override
  State<PokeLoadingIndicator> createState() => _PokeLoadingIndicatorState();
}

class _PokeLoadingIndicatorState extends State<PokeLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.neumorphicBackgroundColor,
                  borderRadius: BorderRadius.circular(Sizes.p48),
                  boxShadow: [
                    AppShadows.neumorphicShadow,
                    AppShadows.neumorphicShadowInverted,
                  ],
                ),
                child: CircularProgressIndicator(
                  strokeWidth: Sizes.p6,
                  value: controller.value,
                ),
              ),
              gapH8,
              Text(
                '${(controller.value * 100).toInt()}%',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        );
      },
    );
  }
}
