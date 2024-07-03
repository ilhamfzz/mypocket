import 'package:eas_ppb/src/home/home.dart';
import 'package:eas_ppb/src/history/history.dart';
import 'package:eas_ppb/src/profile/profile.dart';

class NavigationBarModel {
  const NavigationBarModel({
    required this.label,
    required this.icon,
    required this.iconActive,
    required this.routeName,
  });

  final String label;
  final String icon;
  final String iconActive;
  final String routeName;

  static const List<NavigationBarModel> menuList = [
    NavigationBarModel(
      label: "Homepage",
      icon: "assets/icons/icon_menu_home_outline.svg",
      iconActive: "assets/icons/icon_menu_home_solid.svg",
      routeName: Home.routeName,
    ),
    NavigationBarModel(
      label: "History",
      icon: "assets/icons/icon_menu_history_outline.svg",
      iconActive: "assets/icons/icon_menu_history_solid.svg",
      routeName: History.routeName,
    ),
    NavigationBarModel(
      label: "Profile",
      icon: "assets/icons/icon_menu_profile_outline.svg",
      iconActive: "assets/icons/icon_menu_profile_solid.svg",
      routeName: Profile.routeName,
    ),
  ];
}
