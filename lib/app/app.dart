import 'package:shorebird_demo/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:shorebird_demo/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:shorebird_demo/ui/views/home/home_view.dart';
import 'package:shorebird_demo/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:shorebird_demo/ui/views/landing/landing_view.dart';
import 'package:shorebird_demo/ui/views/qr_code/qr_code_view.dart';
import 'package:shorebird_demo/ui/views/settings/settings_view.dart';
import 'package:shorebird_demo/ui/views/profile/profile_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LandingView),
    MaterialRoute(page: QrCodeView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: ProfileView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
