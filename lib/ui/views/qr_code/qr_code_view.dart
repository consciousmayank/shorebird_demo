import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'qr_code_viewmodel.dart';

class QrCodeView extends StackedView<QrCodeViewModel> {
  const QrCodeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    QrCodeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.withOpacity(0.5),
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Text(
          "Scan the Qr code and start chatting with your seh-Adhikaris.",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }

  @override
  QrCodeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      QrCodeViewModel();
}
