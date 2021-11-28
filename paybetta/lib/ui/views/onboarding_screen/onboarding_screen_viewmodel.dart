import 'package:flutter/material.dart';
import 'package:paybetta/ui/views/onboarding_screen/onboarding_controller.dart';
import 'package:paybetta/app/app.locator.dart';
import 'package:paybetta/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingScreenViewModel extends BaseViewModel {
  String _textButton = 'NEXT';
  String _skip = 'Skip';
  String _started = 'GET STARTED';
  String _hadAccount = 'Already had an account? Login';
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  String get skip => _skip;
  String get started => _started;
  String get hadAccount => _hadAccount;
  String get textButton => _textButton;
  final controller = OnboardingController();

  final controller2 = PageController();

  void nextPage() {
    controller2.nextPage(duration: 400.milliseconds, curve: Curves.ease);
  }

  void skipPage() {
    controller2.animateToPage(2,
        duration: 400.milliseconds, curve: Curves.ease);
  }

  void pageChange(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  final _navigationService = locator<NavigationService>();

  void navigateToGetStartedView() {
    _navigationService.navigateTo(Routes.getStartedScreenView);
  }
}
