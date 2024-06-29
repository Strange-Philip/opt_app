import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:opt_app/resources/resources.dart';

void main() {
  test('app_lottie assets test', () {
    expect(File(AppLottie.aiLogo).existsSync(), isTrue);
    expect(File(AppLottie.generating).existsSync(), isTrue);
    expect(File(AppLottie.intro).existsSync(), isTrue);
  });
}
