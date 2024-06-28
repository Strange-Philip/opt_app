import 'package:opt_app/library/opt_app.dart';

// https://stackoverflow.com/a/63068152/644571
double _heightCalc(double pxHeight, int fontSize) => pxHeight / fontSize;

class AppTypography {
  TextStyle get baseTextStyle => const TextStyle(
        fontStyle: FontStyle.normal,
        fontFamily: FontFamily.satoshi,
      );

  /// xs TextStyle styles
  TextStyle get xsRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(16, 12),
      );
  TextStyle get xsMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(16, 12),
      );
  TextStyle get xsSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(16, 12),
      );
  TextStyle get xsBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(16, 12),
      );

  /// small TextStyle styles
  TextStyle get smallRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 14),
      );
  TextStyle get smallMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 14),
      );
  TextStyle get smallSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 14),
      );
  TextStyle get smallBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 14),
      );

  /// Base TextStyle styles
  TextStyle get baseRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(24, 16),
      );
  TextStyle get baseMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(24, 16),
      );
  TextStyle get baseSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(24, 16),
      );
  TextStyle get baseBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(24, 16),
      );

  /// large TextStyle styles
  TextStyle get largeRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 18),
      );
  TextStyle get largeMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 18),
      );
  TextStyle get largeSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 18),
      );
  TextStyle get largeBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 18),
      );

  /// extraLarge TextStyle styles
  TextStyle get extraLargeRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 20),
      );
  TextStyle get extraLargeMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 20),
      );
  TextStyle get extraLargeSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 20),
      );
  TextStyle get extraLargeBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 20),
      );

  /// xxl TextStyle styles
  TextStyle get xxlRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 24),
      );
  TextStyle get xxlMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 24),
      );
  TextStyle get xxlSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 24),
      );
  TextStyle get xxlBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 24),
      );

  /// xxxl TextStyle styles
  TextStyle get xxxlRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 30,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 30),
      );
  TextStyle get xxxlMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 30,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 30),
      );
  TextStyle get xxxlSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 30,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 30),
      );
  TextStyle get xxxlBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 30),
      );

  /// xxxxl TextStyle styles
  TextStyle get xxxxlRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 36,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(40, 36),
      );
  TextStyle get xxxxlMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 36,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(40, 36),
      );
  TextStyle get xxxxlSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 36,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(40, 36),
      );
  TextStyle get xxxxlBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 36,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(40, 36),
      );

  /// xxxxxl TextStyle styles
  TextStyle get xxxxxlRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 48,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(48, 48),
      );
  TextStyle get xxxxxlMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 48,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(48, 48),
      );
  TextStyle get xxxxxlSemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 48,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(48, 48),
      );
  TextStyle get xxxxxlBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 48,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(48, 48),
      );
}
