import 'package:flutter/material.dart';
import 'package:pokipoke/app/routes/app_router.dart';
import 'package:pokipoke/app/theme/app_theme.dart';

class PokiPokeApp extends StatelessWidget {
  const PokiPokeApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Poki Poke',
        routerConfig: routerConfig,
        theme: AppTheme.themeData,
        debugShowCheckedModeBanner: false,
      );
}
