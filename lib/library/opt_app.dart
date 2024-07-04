library opt_app;

// * Screens
//? Splash Screen
// export 'package:opt_app/splash_screen.dart';

//? Features Screens
export "package:opt_app/features/onboarding/onboarding_page.dart";
export "package:opt_app/features/home/homepage.dart";
export 'package:opt_app/features/onboarding/intro.dart';
export 'package:opt_app/features/home/select_location.dart';
export 'package:opt_app/features/home/add_photo.dart';
export 'package:opt_app/features/home/add_ocular_health.dart';
export 'package:opt_app/features/home/add_medical_health.dart';

// * Services
export 'package:opt_app/constants/config.dart';
export 'package:opt_app/constants/feature_flags.dart';
export 'package:opt_app/constants/remote_config_repository.dart';

// * Routes
// export 'package:opt_app/routes/router_config.dart';

// * Models
export 'package:opt_app/models/complaint.dart';
export 'package:opt_app/models/diagnosis.dart';
// export 'package:opt_app/model/wooimage.dart';
// export 'package:opt_app/features/profile/models/user_address_model.dart';
// export 'package:opt_app/provider/orders.dart';
// export 'package:opt_app/model/brand.dart';

//* Constants
// export 'package:opt_app/constants/data.dart';

// ? Global Declarations
// export 'package:opt_app/constants/global/global.dart';

// * Widgets
export 'package:opt_app/components/butttons/primary_button.dart';
export 'package:opt_app/components/butttons/secondary_button.dart';
export 'package:opt_app/components/appbar.dart';
export 'package:opt_app/components/complaint_chip.dart';
export 'package:opt_app/features/home/select_complaints.dart';
export 'package:opt_app/components/location_card.dart';
export 'package:opt_app/components/tab_select_card.dart';
export 'package:opt_app/features/home/generate_diagnosis_page.dart';
// export 'package:opt_app/features/onboarding/components/indicator.dart';
// export 'package:opt_app/features/onboarding/components/text_component.dart';

// * Utils
// ? Extensions
export 'package:opt_app/library/extensions/validate_input_extension.dart';
export 'package:opt_app/library/extensions/general_extensions.dart';
// export 'package:opt_app/utils/extensions/show_modal_extentions.dart';

// ? Enums
export 'package:opt_app/library/enums/enums.dart';
// ? Functions

// ? AssetsPaths
export 'package:opt_app/resources/resources.dart';

// * Providers
// export 'package:opt_app/provider/cart.dart';
// export 'package:opt_app/provider/like_provider.dart';
// export 'package:opt_app/provider/auth_service.dart';

// * Theme
export 'package:opt_app/theme/app_theme.dart';
export 'package:opt_app/theme/app_colors.dart';
export 'package:opt_app/theme/app_typography.dart';

// * External Packages
export 'package:flutter/material.dart';
export 'dart:convert';
export 'dart:io';
export 'package:flutter_gemini/flutter_gemini.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter/services.dart';
export 'package:flutter_dotenv/flutter_dotenv.dart';
export 'package:lottie/lottie.dart';
export 'package:flutter_svg/svg.dart';

// *Firebase
export 'package:firebase_core/firebase_core.dart';
export 'package:firebase_crashlytics/firebase_crashlytics.dart';
export 'package:opt_app/firebase_options.dart';
