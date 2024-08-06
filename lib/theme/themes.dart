import 'package:flutter/material.dart';
import 'package:to_do/resources/colors.dart';

ThemeData lightMod = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.primaryLight,
    secondary: AppColors.primaryDark,
    tertiary: AppColors.primaryVariantLight
  ),
  textTheme: const TextTheme(
    labelLarge: TextStyle(color: AppColors.textLight),
  ),
);

ThemeData darkMod = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDark,
      secondary: AppColors.primaryLight,
      tertiary: AppColors.primaryVariantDark
  ),
  textTheme: const TextTheme(
    labelLarge: TextStyle(color: AppColors.textDark),
  ),
);