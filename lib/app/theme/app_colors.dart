import 'package:flutter/material.dart';

/// [AppColors] defines custom color constants for the application's design.
///
/// The `AppColors` class encapsulates color constants used throughout the application.
/// It includes settings for text color, neumorphic shadow color, and neumorphic background color.
class AppColors {
  AppColors._();

  /// [textColor] is used for text in the application's design.
  ///
  /// This `textColor` constant defines the default color used for various text elements
  /// in the application's user interface, ensuring consistent typography.
  static Color textColor = Colors.grey[700]!;

  /// [neumorphicShadowColor] is used for shadows in the application's design.
  ///
  /// This `neumorphicShadowColor` constant defines the default color used for shadows
  /// in the application's user interface, ensuring consistent shadows.
  static Color neumorphicShadowColor = Colors.grey[400]!;

  /// [neumorphicBackgroundColor] is used for background in the application's design.
  ///
  /// This `neumorphicBackgroundColor` constant defines the default color used for background
  /// in the application's user interface, ensuring consistent background.
  static Color neumorphicBackgroundColor = Colors.grey[200]!;
}
