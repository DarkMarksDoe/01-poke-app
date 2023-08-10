import 'package:flutter/material.dart';
import 'package:pokipoke/app/theme/app_colors.dart';

/// [AppShadows] defines custom shadow configurations for neumorphic design.
///
/// The `AppShadows` class encapsulates various shadow configurations used in the
/// neumorphic design of the application's components.
class AppShadows {
  AppShadows._();

  /// [neumorphicShadow] it'a a shadow configuration for components.
  ///
  /// This `neumorphicShadow` configuration defines a shadow with
  /// characteristics suitable for the neumorphic design style.
  ///
  /// The parameters of this shadow are:
  /// * color: AppColors.neumorphicShadowColor
  /// * offset: Offset(5, 5)
  /// * blurRadius: 10
  /// * spreadRadius: 2
  ///
  static BoxShadow neumorphicShadow = BoxShadow(
    color: AppColors.neumorphicShadowColor,
    offset: const Offset(5, 5),
    blurRadius: 10,
    spreadRadius: 2,
  );

  /// [neumorphicShadowInvert] it'a a shadow configuration for inverted components.
  ///
  /// This `neumorphicShadowInvert` configuration defines a shadow with
  /// characteristics suitable for the inverted neumorphic design style.
  ///
  /// The parameters of this shadow are:
  /// * color: white
  /// * offset: Offset(-5, -5)
  /// * blurRadius: 10
  /// * spreadRadius: 2
  ///
  static BoxShadow neumorphicShadowInvert = const BoxShadow(
    color: Colors.white,
    offset: Offset(-5, -5),
    blurRadius: 10,
    spreadRadius: 2,
  );
}
