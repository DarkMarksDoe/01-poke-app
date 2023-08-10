import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokipoke/app/routes/app_routes.dart';
import 'package:pokipoke/app/widgets/poke_loading_indicator.dart';

/// [SplashPage] is the first page displayed when the application starts.
///
/// The `SplashPage` displays a loading animation and a message while the application initializes.
/// After the initialization is complete, the `SplashPage` navigates to the [HomePage].
///
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {

  /// The animation controller for the splash animation.
  late AnimationController _controller;

  /// The duration of the splash animation.

  final Duration duration = const Duration(seconds: 2, milliseconds: 500);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: duration,
    )..forward().whenComplete(
        () => context.pushReplacementNamed(AppRoutes.home),
      );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PokeLoadingIndicator(duration: duration),
          const SizedBox(height: 16),
          Text(
            'Your poke app is loading...',
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
