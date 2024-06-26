import 'package:flutter/material.dart';
import 'package:shorebird_demo/app/app.bottomsheets.dart';
import 'package:shorebird_demo/app/app.dialogs.dart';
import 'package:shorebird_demo/app/app.locator.dart';
import 'package:shorebird_demo/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  var navBottomItems = [
    const BottomNavigationBarItem(
      label: "Home",
      icon: Icon(Icons.home),
    ),
    const BottomNavigationBarItem(
      label: "Scan  QR",
      icon: Icon(Icons.qr_code),
    ),
    const BottomNavigationBarItem(
      label: "Settings",
      icon: Icon(Icons.settings),
    )
  ];

  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  Widget getView() {
    return Container(
      alignment: Alignment.center,
      child: Text(navBottomItems.elementAt(currentIndex).label ?? "None"),
    );
  }
}
