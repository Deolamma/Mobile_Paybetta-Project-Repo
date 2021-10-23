import 'package:flutter/material.dart';
import 'package:paybetta/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => StartupViewmodel(),
        builder: (context, model, _) {
          return Scaffold(
            appBar: AppBar(title: const Text('PayBetta App')),
            body: const Center(
              child: Text('Welcome to PAyBetta App'),
            ),
          );
        });
  }
}
