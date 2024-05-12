import 'package:flutter/material.dart';

// Extension on TextStyle for custom fontFamily
extension TextStyleExtensions on TextStyle {
  TextStyle get lexend {
    return copyWith(fontFamily: 'Lexend');
  }
}

class CustomTextStyles {
  static TextStyle displayMediumBlack900(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
            color: Colors.black.withOpacity(0.33),
            fontWeight: FontWeight.w100,
          );

  static TextStyle displayMediumBold(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 48,
          );

  static TextStyle displayMediumPrimary(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 48,
            fontWeight: FontWeight.w700,
          );

  static TextStyle headlineLargeBold(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.w700,
          );

  static TextStyle titleLargeBlack900(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          );

  static TextStyle titleLargeBluegray400(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Colors.blueGrey[400],
            fontWeight: FontWeight.w400,
          );

  static TextStyle titleLargePrimary(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w400,
          );
}
