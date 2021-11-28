import 'package:paybetta/ui/views/get_started_screen/get_started_screen_view.dart';
import 'package:paybetta/ui/views/onboarding_screen/onboarding_screen_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: OnboardingScreenView, initial: true),
    MaterialRoute(page: GetStartedScreenView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
