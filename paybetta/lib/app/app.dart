import 'package:paybetta/ui/views/second_screen/second_screen_view.dart';
import 'package:paybetta/ui/views/second_screen/second_screen_viewmodel.dart';
import 'package:paybetta/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: SecondScreenView),
],
dependencies: [
  LazySingleton(classType: NavigationService),
],)
class AppSetup{

}