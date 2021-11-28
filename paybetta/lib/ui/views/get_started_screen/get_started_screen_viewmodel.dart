import 'package:stacked/stacked.dart';

class GetStartedScreenViewModel extends BaseViewModel {
  String _logo = 'assets/images/logo.png';
  String _createAcct = 'Create a free account';
  String _start = 'GET STARTED';
  String _login = 'LOGIN';

  String get logo => _logo;
  String get login => _login;
  String get start => _start;
  String get createAcct => _createAcct;
}
