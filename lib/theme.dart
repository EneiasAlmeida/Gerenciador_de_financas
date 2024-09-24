import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff705289),
      surfaceTint: Color(0xff705289),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfff2daff),
      onPrimaryContainer: Color(0xff290c41),
      secondary: Color(0xff705289),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff1daff),
      onSecondaryContainer: Color(0xff290c41),
      tertiary: Color(0xff8f4a51),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdadb),
      onTertiaryContainer: Color(0xff3b0711),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff7fd),
      onBackground: Color(0xff1e1a20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      surfaceVariant: Color(0xffe9dfea),
      onSurfaceVariant: Color(0xff4b454d),
      outline: Color(0xff7c757e),
      outlineVariant: Color(0xffcdc4ce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeef1f6),
      inversePrimary: Color(0xffddb9f8),
      primaryFixed: Color(0xfff2daff),
      onPrimaryFixed: Color(0xff290c41),
      primaryFixedDim: Color(0xffddb9f8),
      onPrimaryFixedVariant: Color(0xff573a70),
      secondaryFixed: Color(0xfff1daff),
      onSecondaryFixed: Color(0xff290c41),
      secondaryFixedDim: Color(0xffddb9f8),
      onSecondaryFixedVariant: Color(0xff573a70),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff3b0711),
      tertiaryFixedDim: Color(0xffffb2b8),
      onTertiaryFixedVariant: Color(0xff72333a),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff53366b),
      surfaceTint: Color(0xff705289),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8768a1),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff53366b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8768a1),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff6d2f37),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa95f66),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff7fd),
      onBackground: Color(0xff1e1a20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      surfaceVariant: Color(0xffe9dfea),
      onSurfaceVariant: Color(0xff474149),
      outline: Color(0xff635d66),
      outlineVariant: Color(0xff807882),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeef1f6),
      inversePrimary: Color(0xffddb9f8),
      primaryFixed: Color(0xff8768a1),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff6e4f86),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8768a1),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6d4f87),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa95f66),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff8c474f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff311448),
      surfaceTint: Color(0xff705289),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff53366b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff301448),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff53366b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff440e18),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6d2f37),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff7fd),
      onBackground: Color(0xff1e1a20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffe9dfea),
      onSurfaceVariant: Color(0xff27222a),
      outline: Color(0xff474149),
      outlineVariant: Color(0xff474149),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xfff7e6ff),
      primaryFixed: Color(0xff53366b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3c1f53),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff53366b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3b1f54),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6d2f37),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff511922),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffddb9f8),
      surfaceTint: Color(0xffddb9f8),
      onPrimary: Color(0xff402357),
      primaryContainer: Color(0xff573a70),
      onPrimaryContainer: Color(0xfff2daff),
      secondary: Color(0xffddb9f8),
      onSecondary: Color(0xff3f2358),
      secondaryContainer: Color(0xff573a70),
      onSecondaryContainer: Color(0xfff1daff),
      tertiary: Color(0xffffb2b8),
      onTertiary: Color(0xff561d25),
      tertiaryContainer: Color(0xff72333a),
      onTertiaryContainer: Color(0xffffdadb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff151217),
      onBackground: Color(0xffe8e0e8),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e8),
      surfaceVariant: Color(0xff4b454d),
      onSurfaceVariant: Color(0xffcdc4ce),
      outline: Color(0xff968e98),
      outlineVariant: Color(0xff4b454d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inverseOnSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff705289),
      primaryFixed: Color(0xfff2daff),
      onPrimaryFixed: Color(0xff290c41),
      primaryFixedDim: Color(0xffddb9f8),
      onPrimaryFixedVariant: Color(0xff573a70),
      secondaryFixed: Color(0xfff1daff),
      onSecondaryFixed: Color(0xff290c41),
      secondaryFixedDim: Color(0xffddb9f8),
      onSecondaryFixedVariant: Color(0xff573a70),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff3b0711),
      tertiaryFixedDim: Color(0xffffb2b8),
      onTertiaryFixedVariant: Color(0xff72333a),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe1bdfc),
      surfaceTint: Color(0xffddb9f8),
      onPrimary: Color(0xff24063b),
      primaryContainer: Color(0xffa584bf),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffe1bdfc),
      onSecondary: Color(0xff24063c),
      secondaryContainer: Color(0xffa584bf),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb8be),
      onTertiary: Color(0xff34030c),
      tertiaryContainer: Color(0xffca7a82),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff151217),
      onBackground: Color(0xffe8e0e8),
      surface: Color(0xff101418),
      onSurface: Color(0xfff9faff),
      surfaceVariant: Color(0xff4b454d),
      onSurfaceVariant: Color(0xffd1c8d2),
      outline: Color(0xffa9a0aa),
      outlineVariant: Color(0xff88818a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inverseOnSurface: Color(0xff272a2f),
      inversePrimary: Color(0xff593b71),
      primaryFixed: Color(0xfff2daff),
      onPrimaryFixed: Color(0xff1e0136),
      primaryFixedDim: Color(0xffddb9f8),
      onPrimaryFixedVariant: Color(0xff46295e),
      secondaryFixed: Color(0xfff1daff),
      onSecondaryFixed: Color(0xff1e0136),
      secondaryFixedDim: Color(0xffddb9f8),
      onSecondaryFixedVariant: Color(0xff46295e),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff2c0008),
      tertiaryFixedDim: Color(0xffffb2b8),
      onTertiaryFixedVariant: Color(0xff5e222a),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9fb),
      surfaceTint: Color(0xffddb9f8),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffe1bdfc),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9fb),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe1bdfc),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb8be),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff151217),
      onBackground: Color(0xffe8e0e8),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff4b454d),
      onSurfaceVariant: Color(0xfffff9fb),
      outline: Color(0xffd1c8d2),
      outlineVariant: Color(0xffd1c8d2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff391d50),
      primaryFixed: Color(0xfff4e0ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffe1bdfc),
      onPrimaryFixedVariant: Color(0xff24063b),
      secondaryFixed: Color(0xfff4e0ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe1bdfc),
      onSecondaryFixedVariant: Color(0xff24063c),
      tertiaryFixed: Color(0xffffdfe1),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb8be),
      onTertiaryFixedVariant: Color(0xff34030c),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
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


  List<ExtendedColor> get extendedColors => [
  ];
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