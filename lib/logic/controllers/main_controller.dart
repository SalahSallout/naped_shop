import 'package:get/get.dart';
import 'package:naped_shop/view/screens/catogory_screen.dart';
import 'package:naped_shop/view/screens/settings_screen.dart';

import '../../view/screens/favorites_screen.dart';
import '../../view/screens/home_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    "Nabed Shop",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}
