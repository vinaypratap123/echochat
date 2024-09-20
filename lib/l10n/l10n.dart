import 'package:get/get_navigation/src/root/internacionalization.dart';

class L10n extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      "enter_email": "enter email",
      "please_fill_all_the_fields": "Please fill all the fields",
      "do_not_have_an_account_signup": "Don't have an account? SignUp",

      "echochat": "Echo Chat",
      "login_with_goolge":"Login with Goolge",
      "switch_theme":"Switch Theme",
    },
    'hi_IND': {
      "enter_email": "ईमेल दर्ज करें",
      "please_fill_all_the_fields": "कृपया सभी फ़ील्ड भरें",
      "do_not_have_an_account_signup": "कोई खाता नहीं है? साइन अप करें",

      "echochat": "Echo Chat",
      "login_with_goolge":"गूगल के साथ लॉगिन करें",
      "switch_theme":"थीम बदलें",
    },
  };
}
