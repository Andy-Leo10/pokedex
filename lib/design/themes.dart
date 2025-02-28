import 'package:flutter/material.dart';
import 'package:pokedex/design/colors.dart';
import 'package:pokedex/design/fonts.dart';

class PokeThemes {
  PokeThemes._();
  static ThemeData defaultTheme = ThemeData(
    fontFamily: 'GoogleSans',
    primaryColor: PokeColors.primaryColor,

    // TEXT THEME
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: PokeFonts.bodyLarge),
      bodyMedium: TextStyle(fontSize: PokeFonts.bodyMedium),
      bodySmall: TextStyle(fontSize: PokeFonts.bodySmall),
      titleLarge: TextStyle(
        fontSize: PokeFonts.titleLarge,
        fontWeight: FontWeight.bold,
        color: PokeColors.primaryColor,
      ),
      titleMedium: TextStyle(
        fontSize: PokeFonts.titleMedium,
        fontWeight: FontWeight.bold,
        color: PokeColors.secondaryColor,
      ),
      titleSmall: TextStyle(
        fontSize: PokeFonts.titleSmall,
        fontWeight: FontWeight.bold,
        color: PokeColors.lightColor,
      ),
      labelLarge: TextStyle(
        fontSize: PokeFonts.labelLarge,
        fontWeight: FontWeight.w400,
        color: PokeColors.ligthDarkColor,
      ),
      labelMedium: TextStyle(
        fontSize: PokeFonts.labelMedium,
        fontWeight: FontWeight.w400,
        color: PokeColors.ligthDarkColor,
      ),
      labelSmall: TextStyle(
        fontSize: PokeFonts.labelSmall,
        fontWeight: FontWeight.w400,
        color: PokeColors.colorBorder,
      ),
    ),
    
    // BUTTON THEME
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(PokeColors.lightColor),
        foregroundColor: WidgetStateProperty.all<Color>(PokeColors.colorBorder),
        textStyle: WidgetStateProperty.all<TextStyle>(
          TextStyle(fontSize: PokeFonts.bodyMedium),
        ),
      ),
    ),  
  );
}
