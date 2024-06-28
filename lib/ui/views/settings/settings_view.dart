import 'package:flutter/material.dart';
import 'package:shorebird_demo/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewmodel.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.withOpacity(0.5),
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            verticalSpaceTiny,
            CircleAvatar(
              maxRadius: 100,
              minRadius: 50,
              child: FlutterLogo(
                size: 80,
              ),
            ),
            verticalSpaceMedium,
            Card(
              child: ListTile(
                onTap: (){
                  viewModel.takeToProfilesScreen();
                },
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                title: Text("Update profile"),
                subtitle: Text(
                  "Here you can update your name and profile picture.",
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: viewModel.askForPermissions,
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                title: Text("Add a new Seh-Adhikari"),
                subtitle: Text(
                  "Add a new Collegue",
                ),
              ),
            ),
            Spacer(),
            Card(
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
                subtitle: Text(
                  "Get back soon",
                ),
              ),
            ),
            verticalSpaceTiny,
          ],
        ),
      ),
    );
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}
