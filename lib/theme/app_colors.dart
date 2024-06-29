import 'package:opt_app/library/opt_app.dart';

class AppColors {
  /// usage:
  /// `AppColors.white`
  static const Color white = Color(0xffFFFFFF);
  static const Color butttonColor = Color(0xff0284C7);

  /// usage:
  /// `AppColors.black`
  static const Color black = Color(0xff111111);
  static const Color inActiveThumbColor = Color(0xff79747E);
  static const Color inActiveTrackColor = Color(0xffE6E0E9);

  ///Chart Colors
  static const Color chartColorYellow = Color(0xffFDE047);
  static const Color chartColorRed = Color(0xffF472B6);
  static const Color chartColorGreen = Color(0xffA7F3D0);
  static const Color chartColorBlue = Color(0xffA5F3FC);
  static const Color chartColorOrange = Color(0xffFED7AA);
  static const Color chartColorPink = Color(0xffFECACA);

  /// usage:
  /// `AppColors.primary[50]`
  ///  `AppColors.primary.shade.50`

  static final MaterialColor primary =
      MaterialColor(const Color(0xFF274cc8).value, const <int, Color>{
    50: Color(0xFFE8EAF6),
    100: Color(0xFFC5CAE9),
    200: Color(0xFF9FA8DA),
    300: Color(0xFF7986CB),
    400: Color(0xFF5C6BC0),
    500: Color(0xFF3F51B5),
    600: Color(0xFF394AAE),
    700: Color(0xFF3140A5),
    800: Color(0xFF29379D),
    900: Color(0xFF1A237E),
  });

  static final MaterialColor secondary =
      MaterialColor(const Color(0xff4adddd).value, const <int, Color>{
    50: Color(0xFFE0F7FA),
    100: Color(0xFFB2EBF2),
    200: Color(0xFF80DEEA),
    300: Color(0xFF4DD0E1),
    400: Color(0xFF26C6DA),
    500: Color(0xFF00BCD4),
    600: Color(0xFF00ACC1),
    700: Color(0xFF0097A7),
    800: Color(0xFF00838F),
    900: Color(0xFF006064),
  });

  /// usage:
  /// `AppColors.coolGray[50]`
  /// `AppColors.coolGray.50`
  static final MaterialColor coolGray =
      MaterialColor(const Color(0xFFF9FAFB).value, const <int, Color>{
    50: Color(0xFFF9FAFB),
    100: Color(0xFFF3F4F6),
    200: Color(0xFFE5E7EB),
    300: Color(0xFFD1D5DB),
    400: Color(0xFF9CA3AF),
    500: Color(0xFF6B7280),
    600: Color(0xFF4B5563),
    700: Color(0xFF374151),
    800: Color(0xFF1F2937),
    900: Color(0xFF111827),
  });

  /// usage:
  /// `AppColors.blueGray[50]`
  /// `AppColors.blueGray.50`
  static final MaterialColor blueGray =
      MaterialColor(const Color(0xFF64748A).value, const <int, Color>{
    50: Color(0xFFF8FAFC),
    100: Color(0xFFF1F5F9),
    200: Color(0xFFE2E8F0),
    300: Color(0xFFCBD5E0),
    400: Color(0xFF94A3B7),
    500: Color(0xFF64748A),
    600: Color(0xFF475568),
    700: Color(0xFF334154),
    800: Color(0xFF1E293A),
    900: Color(0xFF111826),
  });

  /// usage:
  /// `AppColors.gray[50]`
  /// `AppColors.gray.50`
  static final MaterialColor gray = MaterialColor(const Color(0xFF71717A).value, const <int, Color>{
    50: Color(0xFFF9FAFB),
    100: Color(0xFFF4F4F5),
    200: Color(0xFFE4E4E7),
    300: Color(0xFFD4D4D8),
    400: Color(0xFFA1A1AA),
    500: Color(0xFF71717A),
    600: Color(0xFF52525B),
    700: Color(0xFF3F3F46),
    800: Color(0xFF27272A),
    900: Color(0xFF18181B),
  });

  /// usage:
  /// `AppColors.trueGray[50]`
  /// `AppColors.trueGray.50`
  static final MaterialColor trueGray =
      MaterialColor(const Color(0xFF737373).value, const <int, Color>{
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF5F5F5),
    200: Color(0xFFE5E5E5),
    300: Color(0xFFD4D4D4),
    400: Color(0xFFA3A3A3),
    500: Color(0xFF737373),
    600: Color(0xFF525252),
    700: Color(0xFF404040),
    800: Color(0xFF262626),
    900: Color(0xFF171717),
  });

  /// usage:
  /// `AppColors.warmGray[50]`
  /// `AppColors.warmGray.50`
  static final MaterialColor warmGray =
      MaterialColor(const Color(0xFF737373).value, const <int, Color>{
    50: Color(0xFFFAFAF9),
    100: Color(0xFFF5F5F4),
    200: Color(0xFFE7E5E4),
    300: Color(0xFFD6D3D1),
    400: Color(0xFFA8A29E),
    500: Color(0xFF78716C),
    600: Color(0xFF57534E),
    700: Color(0xFF44403C),
    800: Color(0xFF292524),
    900: Color(0xFF1C1917),
  });

  /// usage:
  /// `AppColors.red[50]`
  /// `AppColors.red.50`
  static final MaterialColor red = MaterialColor(const Color(0xFFEF4444).value, const <int, Color>{
    50: Color(0xFFFEF2F2),
    100: Color(0xFFFEE2E2),
    200: Color(0xFFFECACA),
    300: Color(0xFFFCA5A5),
    400: Color(0xFFF87171),
    500: Color(0xFFEF4444),
    600: Color(0xFFDC2626),
    700: Color(0xFFB91C1C),
    800: Color(0xFF991B1B),
    900: Color(0xFF7F1D1D),
  });

  /// usage:
  /// `AppColor.orange[50]`
  /// `AppColors.orange.50`
  static final MaterialColor orange =
      MaterialColor(const Color(0xFFF97316).value, const <int, Color>{
    50: Color(0xFFFFF7ED),
    100: Color(0xFFFFEDD5),
    200: Color(0xFFFED7AA),
    300: Color(0xFFFDBA74),
    400: Color(0xFFFB923C),
    500: Color(0xFFF97316),
    600: Color(0xFFEA580C),
    700: Color(0xFFC2410C),
    800: Color(0xFF9A3412),
    900: Color(0xFF7C2D12),
  });

  /// usage:
  /// `AppColor.amber[50]`
  /// `AppColors.amber.50`
  static final MaterialColor amber =
      MaterialColor(const Color(0xFFF59E0B).value, const <int, Color>{
    50: Color(0xFFFFFBEB),
    100: Color(0xFFFEF3C7),
    200: Color(0xFFFDE68A),
    300: Color(0xFFFCD34D),
    400: Color(0xFFFBBF24),
    500: Color(0xFFF59E0B),
    600: Color(0xFFD97706),
    700: Color(0xFFB45309),
    800: Color(0xFF92400E),
    900: Color(0xFF78350F),
  });

  /// usage:
  /// `AppColor.yellow[50]`
  /// `AppColors.yellow.50`
  static final MaterialColor yellow =
      MaterialColor(const Color(0xFFEAB308).value, const <int, Color>{
    50: Color(0xFFFEFCE8),
    100: Color(0xFFFEF9C3),
    200: Color(0xFFFEF08A),
    300: Color(0xFFFDE047),
    400: Color(0xFFFACC15),
    500: Color(0xFFEAB308),
    600: Color(0xFFCA8A04),
    700: Color(0xFFA16207),
    800: Color(0xFF854D0E),
    900: Color(0xFF713F12),
  });

  /// usage:
  /// `AppColor.lime[50]`
  /// `AppColors.lime.50`
  static final MaterialColor lime = MaterialColor(const Color(0xFF84CC16).value, const <int, Color>{
    50: Color(0xFFF7FEE7),
    100: Color(0xFFECFCCB),
    200: Color(0xFFD9F99D),
    300: Color(0xFFBEF264),
    400: Color(0xFFA3E635),
    500: Color(0xFF84CC16),
    600: Color(0xFF65A30D),
    700: Color(0xFF4D7C0F),
    800: Color(0xFF3F6212),
    900: Color(0xFF365314),
  });

  /// usage:
  /// `AppColor.green[50]`
  /// `AppColors.green.50`
  static final MaterialColor green =
      MaterialColor(const Color(0xFF22C55E).value, const <int, Color>{
    50: Color(0xFFF0FDF4),
    100: Color(0xFFDCFCE7),
    200: Color(0xFFBBF7D0),
    300: Color(0xFF86EFAC),
    400: Color(0xFF4ADE80),
    500: Color(0xFF22C55E),
    600: Color(0xFF16A34A),
    700: Color(0xFF15803D),
    800: Color(0xFF166534),
    900: Color(0xFF14532D),
  });

  /// usage:
  /// `AppColor.emerald[50]`
  /// `AppColors.emerald.50`
  static final MaterialColor emerald =
      MaterialColor(const Color(0xFF10B981).value, const <int, Color>{
    50: Color(0xFFECFDF5),
    100: Color(0xFFD1FAE5),
    200: Color(0xFFA7F3D0),
    300: Color(0xFF6EE7B7),
    400: Color(0xFF34D399),
    500: Color(0xFF10B981),
    600: Color(0xFF059669),
    700: Color(0xFF047857),
    800: Color(0xFF065F46),
    900: Color(0xFF064E3B),
  });

  /// usage:
  /// `AppColor.teal[50]`
  /// `AppColors.teal.50`
  static final MaterialColor teal = MaterialColor(const Color(0xFF14B8A6).value, const <int, Color>{
    50: Color(0xFFF0FDFA),
    100: Color(0xFFCCFBF1),
    200: Color(0xFF99F6E4),
    300: Color(0xFF5EEAD4),
    400: Color(0xFF2DD4BF),
    500: Color(0xFF14B8A6),
    600: Color(0xFF0D9488),
    700: Color(0xFF0F766E),
    800: Color(0xFF115E59),
    900: Color(0xFF134E4A),
  });

  /// usage:
  /// `AppColor.cyan[50]`
  /// `AppColors.cyan.50`
  static final MaterialColor cyan = MaterialColor(const Color(0xFF06B6D4).value, const <int, Color>{
    50: Color(0xFFECFEFF),
    100: Color(0xFFCFFAFE),
    200: Color(0xFFA5F3FC),
    300: Color(0xFF67E8F9),
    400: Color(0xFF22D3EE),
    500: Color(0xFF06B6D4),
    600: Color(0xFF0891B2),
    700: Color(0xFF0E7490),
    800: Color(0xFF155E75),
    900: Color(0xFF164E63),
  });

  /// usage:
  /// `AppColor.lightBlue[50]`
  /// `AppColors.lightBlue.50`
  static final MaterialColor lightBlue =
      MaterialColor(const Color(0xFF0EA5E9).value, const <int, Color>{
    50: Color(0xFFF0F9FF),
    100: Color(0xFFE0F2FE),
    200: Color(0xFFBAE6FD),
    300: Color(0xFF7DD3FC),
    400: Color(0xFF38BDF8),
    500: Color(0xFF0EA5E9),
    600: Color(0xFF0284C7),
    700: Color(0xFF0369A1),
    800: Color(0xFF075985),
    900: Color(0xFF0C4A6E),
  });

  /// usage:
  /// `AppColor.blue[50]`
  /// `AppColors.blue.50`
  static final MaterialColor blue = MaterialColor(const Color(0xFF3B82F6).value, const <int, Color>{
    50: Color(0xFFEFF6FF),
    100: Color(0xFFDBEAFE),
    200: Color(0xFFBFDBFE),
    300: Color(0xFF93C5FD),
    400: Color(0xFF60A5FA),
    500: Color(0xFF3B82F6),
    600: Color(0xFF2563EB),
    700: Color(0xFF1D4ED8),
    800: Color(0xFF1E40AF),
    900: Color(0xFF1E3A8A),
  });

  /// usage:
  /// `AppColor.indigo[50]`
  /// `AppColors.indigo.50`
  static final MaterialColor indigo =
      MaterialColor(const Color(0xFF6366F1).value, const <int, Color>{
    50: Color(0xFFEEF2FF),
    100: Color(0xFFE0E7FF),
    200: Color(0xFFC7D2FE),
    300: Color(0xFFA5B4FC),
    400: Color(0xFF818CF8),
    500: Color(0xFF6366F1),
    600: Color(0xFF4F46E5),
    700: Color(0xFF4338CA),
    800: Color(0xFF3730A3),
    900: Color(0xFF312E81),
  });

  /// usage:
  /// `AppColor.violet[50]`
  /// `AppColors.violet.50`
  static final MaterialColor violet =
      MaterialColor(const Color(0xFF8B5CF6).value, const <int, Color>{
    50: Color(0xFFF5F3FF),
    100: Color(0xFFEDE9FE),
    200: Color(0xFFDDD6FE),
    300: Color(0xFFC4B5FD),
    400: Color(0xFFA78BFA),
    500: Color(0xFF8B5CF6),
    600: Color(0xFF7C3AED),
    700: Color(0xFF6D28D9),
    800: Color(0xFF5B21B6),
    900: Color(0xFF4C1D95),
  });

  /// usage:
  /// `AppColor.purple[50]`
  /// `AppColors.purple.50`
  static final MaterialColor purple =
      MaterialColor(const Color(0xFF8B5CF6).value, const <int, Color>{
    50: Color(0xFFFAF5FF),
    100: Color(0xFFF3E8FF),
    200: Color(0xFFE9D5FF),
    300: Color(0xFFD8B4FE),
    400: Color(0xFFC084FC),
    500: Color(0xFFA855F7),
    600: Color(0xFF9333EA),
    700: Color(0xFF7E22CE),
    800: Color(0xFF6B21A8),
    900: Color(0xFF581C87),
  });

  /// usage:
  /// `AppColor.fuchsia[50]`
  /// `AppColors.fuchsia.50`
  static final MaterialColor fuchsia =
      MaterialColor(const Color(0xFFD946EF).value, const <int, Color>{
    50: Color(0xFFFDF4FF),
    100: Color(0xFFFAE8FF),
    200: Color(0xFFF5D0FE),
    300: Color(0xFFF0ABFC),
    400: Color(0xFFE879F9),
    500: Color(0xFFD946EF),
    600: Color(0xFFC026D3),
    700: Color(0xFFA21CAF),
    800: Color(0xFF86198F),
    900: Color(0xFF701A75),
  });

  /// usage:
  /// `AppColor.pink[50]`
  /// `AppColors.pink.50`
  static final MaterialColor pink = MaterialColor(const Color(0xFFEC4899).value, const <int, Color>{
    50: Color(0xFFFDF2F8),
    100: Color(0xFFFCE7F3),
    200: Color(0xFFFBCFE8),
    300: Color(0xFFF9A8D4),
    400: Color(0xFFF472B6),
    500: Color(0xFFEC4899),
    600: Color(0xFFDB2777),
    700: Color(0xFFBE185D),
    800: Color(0xFF9D174D),
    900: Color(0xFF831843),
  });

  /// usage:
  /// `AppColor.rose[50]`
  /// `AppColors.rose.50`
  static final MaterialColor rose = MaterialColor(const Color(0xFFF43F5E).value, const <int, Color>{
    50: Color(0xFFFFF1F2),
    100: Color(0xFFFFE4E6),
    200: Color(0xFFFECDD3),
    300: Color(0xFFFDA4AF),
    400: Color(0xFFFB7185),
    500: Color(0xFFF43F5E),
    600: Color(0xFFE11D48),
    700: Color(0xFFBE123C),
    800: Color(0xFF9F1239),
    900: Color(0xFF881337),
  });
}
