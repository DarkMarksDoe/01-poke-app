import 'package:flutter/material.dart';
import 'package:pokipoke/app/theme/app_colors.dart';

/// [AppTheme] defines the overall theme data for the application.
///
/// The `AppTheme` class encapsulates the theme data used throughout the application.
/// It includes primarySwatch, visual density, and textTheme.
class AppTheme {
  ///
  const AppTheme._();

  /// [themeData] is the core theme data for the application's design.
  ///
  /// This `themeData` instance defines the visual appearance of the application.
  /// It includes settings such as the primary color, visual density, and text styles.
  static final ThemeData themeData = ThemeData(
    primarySwatch: Colors.orange,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: AppColors.textColor,
      ),
      bodyMedium: TextStyle(
        color: AppColors.textColor,
      ),
      headlineSmall: TextStyle(
        color: AppColors.textColor,
      ),
    ),
  );
}
