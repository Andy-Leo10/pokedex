import 'package:flutter/material.dart';
import 'package:pokedex/design/colors.dart';
import 'package:pokedex/design/fonts.dart';
import 'package:pokedex/design/radius.dart';

class PokeThemes {
  PokeThemes._();
  static ThemeData defaultTheme = ThemeData(
    fontFamily: 'GoogleSans',
    primaryColor: PokeColors.primaryColor,

    // TEXT THEME
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: PokeFonts.bodyLarge, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: PokeFonts.bodyMedium, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: PokeFonts.bodySmall, fontWeight: FontWeight.bold),
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
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PokeRadius.medium),
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(PokeColors.lightColor),
        foregroundColor: WidgetStateProperty.all<Color>(PokeColors.colorBorder),
        textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(fontSize: PokeFonts.bodyMedium),
        ),
      ),
    ),  
  );

  static ThemeData widgetsTheme = ThemeData(
    // BUTTON THEME
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PokeRadius.medium),
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(PokeColors.lightColor),
        foregroundColor: WidgetStateProperty.all<Color>(PokeColors.colorBorder),
        textStyle: WidgetStateProperty.all<TextStyle>(
          TextStyle(fontSize: PokeFonts.bodyLarge,
                    fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),  
  );
}
