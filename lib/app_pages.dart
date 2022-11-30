import 'package:get/get.dart';
import 'package:we_are_friends_app/pages/events/events_list.dart';
import 'package:we_are_friends_app/pages/events/events_page.dart';
import 'package:we_are_friends_app/pages/events/events_page_row.dart';
import 'package:we_are_friends_app/pages/friends/friends_list.dart';
import 'package:we_are_friends_app/pages/friends/friends_page.dart';

import 'splash/splash_binding.dart';
import 'splash/splash_page.dart';
import 'start_page.dart';

class AppPages {
  static const initial = Routes.splashPage;

  static final List<GetPage> routes = [
    GetPage(
      name: Routes.splashPage,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.mainPage,
      page: () => const StartPage(),
      //binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.friendsList,
      page: () => const FriendsListPage(),
      //binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.friendsPage,
      page: () => FriendsPage(),
      //binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.eventsListPage,
      page: () => const EventsListPage(),
      //binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.eventsPage,
      page: () => EventsPage(),
      //binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.eventsPageRow,
      page: () => EventsPageRow(),
      //binding: SplashBinding(),
    ),
  ];
}

abstract class Routes {
  static const splashPage = '/';
  static const mainPage = '/main';
  static const friendsList = '/friends_list';
  static const friendsPage = '/friends_page';
  static const eventsListPage = '/events_list';
  static const eventsPage = '/events_page';
  static const eventsPageRow = '/events_page_row';
}
