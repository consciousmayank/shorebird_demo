import 'package:flutter_test/flutter_test.dart';
import 'package:shorebird_demo/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('QrCodeViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
