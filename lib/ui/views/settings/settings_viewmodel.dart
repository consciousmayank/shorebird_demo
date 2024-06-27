import 'package:shorebird_demo/app/app.locator.dart';
import 'package:shorebird_demo/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  void takeToProfilesScreen() {
    locator<NavigationService>().navigateTo(Routes.profileView);
  }
}
