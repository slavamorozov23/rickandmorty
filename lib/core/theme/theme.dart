import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff904a46),
      surfaceTint: Color(0xff904a46),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad7),
      onPrimaryContainer: Color(0xff3b0909),
      secondary: Color(0xff775654),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad7),
      onSecondaryContainer: Color(0xff2c1513),
      tertiary: Color(0xff725b2e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdea6),
      onTertiaryContainer: Color(0xff271900),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff231919),
      surfaceVariant: Color(0xfff5dddb),
      onSurfaceVariant: Color(0xff534342),
      outline: Color(0xff857371),
      outlineVariant: Color(0xffd8c2bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2d),
      inverseOnSurface: Color(0xffffedeb),
      inversePrimary: Color(0xffffb3ae),
      primaryFixed: Color(0xffffdad7),
      onPrimaryFixed: Color(0xff3b0909),
      primaryFixedDim: Color(0xffffb3ae),
      onPrimaryFixedVariant: Color(0xff733330),
      secondaryFixed: Color(0xffffdad7),
      onSecondaryFixed: Color(0xff2c1513),
      secondaryFixedDim: Color(0xffe7bdb9),
      onSecondaryFixedVariant: Color(0xff5d3f3d),
      tertiaryFixed: Color(0xffffdea6),
      onTertiaryFixed: Color(0xff271900),
      tertiaryFixedDim: Color(0xffe1c28c),
      onTertiaryFixedVariant: Color(0xff594319),
      surfaceDim: Color(0xffe8d6d4),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ef),
      surfaceContainer: Color(0xfffceae8),
      surfaceContainerHigh: Color(0xfff6e4e2),
      surfaceContainerHighest: Color(0xfff1dedd),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff6e2f2c),
      surfaceTint: Color(0xff904a46),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaa5f5b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff593b39),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8f6c69),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff543f15),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8a7142),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff231919),
      surfaceVariant: Color(0xfff5dddb),
      onSurfaceVariant: Color(0xff4e3f3e),
      outline: Color(0xff6c5b5a),
      outlineVariant: Color(0xff897675),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2d),
      inverseOnSurface: Color(0xffffedeb),
      inversePrimary: Color(0xffffb3ae),
      primaryFixed: Color(0xffaa5f5b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8d4844),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8f6c69),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff745451),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8a7142),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff70582c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d4),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ef),
      surfaceContainer: Color(0xfffceae8),
      surfaceContainerHigh: Color(0xfff6e4e2),
      surfaceContainerHighest: Color(0xfff1dedd),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff440f0f),
      surfaceTint: Color(0xff904a46),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6e2f2c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff341b1a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff593b39),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2f1f00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff543f15),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xfff5dddb),
      onSurfaceVariant: Color(0xff2e2120),
      outline: Color(0xff4e3f3e),
      outlineVariant: Color(0xff4e3f3e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2d),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe7e4),
      primaryFixed: Color(0xff6e2f2c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff521a18),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff593b39),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff402624),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff543f15),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3c2a02),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d4),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ef),
      surfaceContainer: Color(0xfffceae8),
      surfaceContainerHigh: Color(0xfff6e4e2),
      surfaceContainerHighest: Color(0xfff1dedd),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb3ae),
      surfaceTint: Color(0xffffb3ae),
      onPrimary: Color(0xff571e1c),
      primaryContainer: Color(0xff733330),
      onPrimaryContainer: Color(0xffffdad7),
      secondary: Color(0xffe7bdb9),
      onSecondary: Color(0xff442927),
      secondaryContainer: Color(0xff5d3f3d),
      onSecondaryContainer: Color(0xffffdad7),
      tertiary: Color(0xffe1c28c),
      onTertiary: Color(0xff402d04),
      tertiaryContainer: Color(0xff594319),
      onTertiaryContainer: Color(0xffffdea6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff1dedd),
      surface: Color(0xff1a1111),
      onSurface: Color(0xfff1dedd),
      surfaceVariant: Color(0xff534342),
      onSurfaceVariant: Color(0xffd8c2bf),
      outline: Color(0xffa08c8a),
      outlineVariant: Color(0xff534342),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedd),
      inverseOnSurface: Color(0xff382e2d),
      inversePrimary: Color(0xff904a46),
      primaryFixed: Color(0xffffdad7),
      onPrimaryFixed: Color(0xff3b0909),
      primaryFixedDim: Color(0xffffb3ae),
      onPrimaryFixedVariant: Color(0xff733330),
      secondaryFixed: Color(0xffffdad7),
      onSecondaryFixed: Color(0xff2c1513),
      secondaryFixedDim: Color(0xffe7bdb9),
      onSecondaryFixedVariant: Color(0xff5d3f3d),
      tertiaryFixed: Color(0xffffdea6),
      onTertiaryFixed: Color(0xff271900),
      tertiaryFixedDim: Color(0xffe1c28c),
      onTertiaryFixedVariant: Color(0xff594319),
      surfaceDim: Color(0xff1a1111),
      surfaceBright: Color(0xff423736),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231919),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322827),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb9b4),
      surfaceTint: Color(0xffffb3ae),
      onPrimary: Color(0xff330405),
      primaryContainer: Color(0xffcb7b75),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffebc1bd),
      onSecondary: Color(0xff26100e),
      secondaryContainer: Color(0xffad8885),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe6c690),
      onTertiary: Color(0xff201400),
      tertiaryContainer: Color(0xffa88d5b),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff1dedd),
      surface: Color(0xff1a1111),
      onSurface: Color(0xfffff9f9),
      surfaceVariant: Color(0xff534342),
      onSurfaceVariant: Color(0xffdcc6c4),
      outline: Color(0xffb39e9c),
      outlineVariant: Color(0xff927f7d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedd),
      inverseOnSurface: Color(0xff322827),
      inversePrimary: Color(0xff743431),
      primaryFixed: Color(0xffffdad7),
      onPrimaryFixed: Color(0xff2c0102),
      primaryFixedDim: Color(0xffffb3ae),
      onPrimaryFixedVariant: Color(0xff5e2321),
      secondaryFixed: Color(0xffffdad7),
      onSecondaryFixed: Color(0xff200b0a),
      secondaryFixedDim: Color(0xffe7bdb9),
      onSecondaryFixedVariant: Color(0xff4b2f2d),
      tertiaryFixed: Color(0xffffdea6),
      onTertiaryFixed: Color(0xff190f00),
      tertiaryFixedDim: Color(0xffe1c28c),
      onTertiaryFixedVariant: Color(0xff463309),
      surfaceDim: Color(0xff1a1111),
      surfaceBright: Color(0xff423736),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231919),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322827),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb3ae),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb9b4),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffebc1bd),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf7),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe6c690),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff1dedd),
      surface: Color(0xff1a1111),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff534342),
      onSurfaceVariant: Color(0xfffff9f9),
      outline: Color(0xffdcc6c4),
      outlineVariant: Color(0xffdcc6c4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedd),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff4e1716),
      primaryFixed: Color(0xffffe0dd),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb9b4),
      onPrimaryFixedVariant: Color(0xff330405),
      secondaryFixed: Color(0xffffe0dd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffebc1bd),
      onSecondaryFixedVariant: Color(0xff26100e),
      tertiaryFixed: Color(0xffffe3b5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe6c690),
      onTertiaryFixedVariant: Color(0xff201400),
      surfaceDim: Color(0xff1a1111),
      surfaceBright: Color(0xff423736),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231919),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322827),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
