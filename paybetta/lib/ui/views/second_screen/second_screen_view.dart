import 'package:flutter/material.dart';
import 'package:paybetta/ui/views/second_screen/second_screen_viewmodel.dart';

import 'package:stacked/stacked.dart';

class SecondScreenView extends StatelessWidget {
  const SecondScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SecondScreenViewmodel(),
        builder: (context, model, _) {
          return Scaffold(
            appBar: AppBar(title: const Text('SecondScreen')),
            body: const Center(
              child: Text('Welcome to Second Screen'),
            ),
          );
        });
  }
}
