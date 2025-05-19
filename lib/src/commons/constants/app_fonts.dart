import 'package:vurelo_test_app/src/commons/constants/app_typography.dart';

class AppFonts {
  AppFonts._();

  static const String family = AppTypography.interFont;

  static get interFont => AppTypography.interFont;
  static get ppFont => AppTypography.pPNeueMontrealFont;
  static get sharpFont => AppTypography.sharpGrotesk;

  static const double fontDisplayLarge = AppTypography.sizeXXL;
  static const double fontDisplayMedium = AppTypography.sizeXL;
  static const double fontDisplaySmall = AppTypography.sizeLG;

  static const double fontHeadLineLarge = AppTypography.sizeLG;
  static const double fontHeadLineMedium = AppTypography.sizeMD;
  static const double fontHeadLineSmall = AppTypography.sizeMD;

  static const double fontTitleLarge = AppTypography.sizeXXL;
  static const double fontTitleMedium = AppTypography.sizeXL;
  static const double fontTitleSmall = AppTypography.sizeLG;

  static const double fontBodyLarge = AppTypography.sizeSM;
  static const double fontBodyMedium = AppTypography.sizeXS;
  static const double fontBodySmall = AppTypography.sizeXXS;

  static const double fontLabelLarge = AppTypography.sizeSM;
  static const double fontLabelMedium = AppTypography.sizeXS;
  static const double fontLabelSmall = AppTypography.sizeXXS;
}