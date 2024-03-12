import 'package:deyarakapp/Featurs/Home/presentation/views/Home_View.dart';
import 'package:deyarakapp/Featurs/aboutus/presentation/aboutusview.dart';
import 'package:deyarakapp/Featurs/contactus/presentation/contactusview.dart';
import 'package:deyarakapp/Featurs/login_screen/Login_Screen.dart';
import 'package:deyarakapp/Featurs/menu/presentation/views/menuview.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/emailview.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/personalinformationview.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/phonenumberview.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/usernameview.dart';
import 'package:deyarakapp/Featurs/profile/presentation/profileview.dart';
import 'package:deyarakapp/Featurs/register_screen/register_view.dart';
import 'package:deyarakapp/Featurs/settings/presentation/settingsview.dart';
import 'package:deyarakapp/Featurs/splash_screen/first_Page/Welocme_Page.dart';
import 'package:deyarakapp/Featurs/splash_screen/splashScreen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kpersonalinformation = '/personalinformationview';
  static const kusername = '/usernameview';
  static const kemail = '/emailview';
  static const kphonenumber = '/phonenumberview';
  static const khome = '/HomeView';
  static const kmenu = '/menueview';
  static const kcontactus = '/contactusview';
  static const kaboutus = '/aboutusview';
  static const ksettings = '/settingsview';
  static const kprofile = '/profileview';
  static const ksplash = '/';
  static const kregister = '/registerview';
  static const klogin = '/login';
  static const kwelcome = '/welcome';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kwelcome,
        builder: (context, state) => const welcome_page(),
      ),
      GoRoute(
        path: klogin,
        builder: (context, state) => const Login_screen(),
      ),
      GoRoute(
        path: kregister,
        builder: (context, state) => const registerView(),
      ),
      GoRoute(
        path: ksplash,
        builder: (context, state) => const screen_splash(),
      ),
      GoRoute(
        path: khome,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kmenu,
        builder: (context, state) => MenueView(),
      ),
      GoRoute(
        path: kpersonalinformation,
        builder: (context, state) => personalinformation(),
      ),
      GoRoute(
        path: kphonenumber,
        builder: (context, state) => phonenumber(),
      ),
      GoRoute(
        path: kemail,
        builder: (context, state) => email(),
      ),
      GoRoute(
        path: kusername,
        builder: (context, state) => username(),
      ),
      GoRoute(
        path: kcontactus,
        builder: (context, state) => contactus(),
      ),
      GoRoute(
        path: kaboutus,
        builder: (context, state) => aboutus(),
      ),
      GoRoute(
        path: ksettings,
        builder: (context, state) => settings(),
      ),
      GoRoute(
        path: kprofile,
        builder: (context, state) => profile(),
      ),
    ],
  );
}
