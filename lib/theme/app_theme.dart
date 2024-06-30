import 'package:opt_app/library/opt_app.dart';

/// Namespace for the App [ThemeData].
class AppTheme {
  /// Standard `ThemeData` for App UI.

  ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          background: AppColors.white,
          surface: AppColors.black,
          outline: AppColors.gray[100],
          outlineVariant: AppColors.gray[200]),
      primaryColor: AppColors.primary,
      indicatorColor: AppColors.gray[300],
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.primary,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
      ),
      scaffoldBackgroundColor: AppColors.white,
      elevatedButtonTheme: _elevatedButtonThemeLightMode,
      outlinedButtonTheme: _outlinedButtonTheme,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      textTheme: _textTheme,
      dialogBackgroundColor: AppColors.white,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      cardTheme: _cardTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      textButtonTheme: _textButtonThemeDataLightMode,
      inputDecorationTheme: _inputDecorationTheme,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
          primary: AppColors.white,
          background: AppColors.black,
          surface: AppColors.white,
          outline: AppColors.gray[400],
          outlineVariant: AppColors.gray[400]),
      primaryColor: AppColors.white,
      indicatorColor: AppColors.gray[700],
      appBarTheme: const AppBarTheme(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
      scaffoldBackgroundColor: AppColors.black,
      elevatedButtonTheme: _elevatedButtonThemeDarkMode,
      outlinedButtonTheme: _outlinedButtonTheme,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      dialogBackgroundColor: AppColors.black,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      cardTheme: _cardTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      textButtonTheme: _textButtonThemeDataDarkMode,
      inputDecorationTheme: _inputDecorationTheme,
      textTheme: _textTheme,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  final _textTheme = TextTheme(
    bodyLarge: AppTypography().largeRegular,
    bodyMedium: AppTypography().baseMedium,
    titleMedium: AppTypography().largeMedium,
    titleSmall: AppTypography().largeRegular,
    displayLarge: AppTypography().largeMedium,
    displayMedium: AppTypography().baseMedium,
    displaySmall: AppTypography().smallRegular,
    headlineMedium: AppTypography().largeMedium,
    headlineSmall: AppTypography().largeRegular,
    titleLarge: AppTypography().extraLargeRegular,
    labelLarge: AppTypography().largeMedium,
    bodySmall: AppTypography().smallRegular,
    labelSmall: AppTypography().smallMedium,
  );

  static InputDecorationTheme get _inputDecorationTheme {
    return const InputDecorationTheme(
      fillColor: AppColors.white,
      filled: true,
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonThemeLightMode {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        textStyle: AppTypography().baseMedium,
        minimumSize: const Size(334, 45),
      ),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonThemeDarkMode {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.white.withOpacity(0.2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        textStyle: AppTypography().baseMedium,
        minimumSize: const Size(334, 45),
      ),
    );
  }

  static BottomNavigationBarThemeData get _bottomNavigationBarThemeData {
    return BottomNavigationBarThemeData(
      selectedItemColor: const Color.fromARGB(255, 10, 56, 0),
      unselectedItemColor: AppColors.gray.shade200,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
    );
  }

  static TextButtonThemeData get _textButtonThemeDataLightMode {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
          foregroundColor: AppColors.black, textStyle: AppTypography().baseMedium),
    );
  }

  static TextButtonThemeData get _textButtonThemeDataDarkMode {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
          foregroundColor: AppColors.gray.shade200, textStyle: AppTypography().baseMedium),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        side: const BorderSide(color: AppColors.white, width: 2),
        padding: const EdgeInsets.symmetric(vertical: 16),
        minimumSize: const Size(208, 54),
      ),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.primary.shade500,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(color: AppColors.white),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2.0,
          color: AppColors.primary.shade500,
        ),
      ),
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.black,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData get _dividerTheme {
    return DividerThemeData(
      space: 0,
      thickness: 1,
      color: AppColors.gray.shade100,
    );
  }

  static CardTheme get _cardTheme {
    return CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
