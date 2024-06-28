import 'package:permission_handler/permission_handler.dart';
import 'package:shorebird_demo/app/app.locator.dart';
import 'package:shorebird_demo/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final DialogService _dialogService = locator<DialogService>();
  void takeToProfilesScreen() {
    locator<NavigationService>().navigateTo(Routes.profileView);
  }

  void askForPermissions() async {
    PermissionStatus permission = await Permission.contacts.request();

    String message = switch(permission){
      // TODO: Handle this case.
      PermissionStatus.denied => "Permission Denied",
      // TODO: Handle this case.
      PermissionStatus.granted => "Permission Granted",
      // TODO: Handle this case.
      PermissionStatus.restricted => "Permission Restricted",
      // TODO: Handle this case.
      PermissionStatus.limited => "Permission limited",
      // TODO: Handle this case.
      PermissionStatus.permanentlyDenied => "Permission permanentlyDenied",
      // TODO: Handle this case.
      PermissionStatus.provisional => "Permission provisional",
    };

    _dialogService.showDialog(title: "Contact Permission", barrierDismissible: false, description: message,);
  }
}
