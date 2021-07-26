import 'package:flutter/widgets.dart';
import 'package:AROODA/screens/cart/cart_screen.dart';
import 'package:AROODA/screens/complete_profile/complete_profile_screen.dart';
import 'package:AROODA/screens/details/details_screen.dart';
import 'package:AROODA/screens/zakatt/zakatt.dart';
import 'package:AROODA/screens/home/home_screen.dart';
import 'package:AROODA/screens/struk_transaksi/struk_screen.dart';
import 'package:AROODA/screens/sedekahshubuh/ss_screen.dart';
import 'package:AROODA/screens/profile/profile_screen.dart';
import 'package:AROODA/screens/sign_in/sign_in_screen.dart';
import 'package:AROODA/screens/splash/splash_screen.dart';
import 'package:AROODA/screens/fitur/sedekah/sedekah.dart';
import 'package:AROODA/screens/debit/debit_screen.dart';
import 'package:AROODA/screens/kebijakan_privasi/kp_screen.dart';
import 'package:AROODA/screens/wakaf/wakaf.dart';
import 'package:AROODA/screens/dana_dai/dana_dai.dart';
import 'package:AROODA/screens/dana_riba/dana_riba.dart';
import 'package:AROODA/screens/notif_screen/screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  FormZakatScreen.routeName: (context) => FormZakatScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  PembayaranScreen.routeName: (context) => PembayaranScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SedekahScreen.routeName: (context) => SedekahScreen(),
  DebitScreen.routeName: (context) => DebitScreen(),
  KebijakanPrivasiScreen.routeName: (context) => KebijakanPrivasiScreen(),
  WakafScreen.routeName: (context) => WakafScreen(),
  DaiScreen.routeName: (context) => DaiScreen(),
  RibaScreen.routeName: (context) => RibaScreen(),
    NotifScreen.routeName: (context) => NotifScreen(),
};
