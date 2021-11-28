import 'package:paybetta/ui/views/onboarding_screen/onboarding_info.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingController extends GetxController {
  List<OnboardingInfo> onboardingPagges = [
    OnboardingInfo(
        'assets/images/Group329.jpg',
        'Buy and sell your products online safely '
            'and confidently',
        'You don’t need to experience doubt when selling or '
            'purchasing any product online. Connect with us today to guaranttee'
            ' all round safety.'),
    OnboardingInfo(
        'assets/images/Group330.jpg',
        'Pay for services as you go with '
            'milestone payments',
        'We are a reliable payment gateway for individuals '
            'and businesses to carry out business transaction, either on '
            'a recurring or one-time basis.'),
    OnboardingInfo(
        'assets/images/Group332.jpg',
        'Make easy and reliable payments in no time',
        'We provide comprehensive, convenient and safe transaction solution '
            'with a ecosystem that is renowned for innovation and agility in '
            'building successful businesses.'),
  ];
}
