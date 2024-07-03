import 'package:eas_ppb/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eas_ppb/src/navbar/navbar_model.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key, required this.routeName});

  final String routeName;

  final List<NavigationBarModel> menuList = NavigationBarModel.menuList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Material(
        color: Colors.white,
        elevation: 6,
        borderRadius: BorderRadius.circular(15),
        child: Row(
          children: List.generate(
            menuList.length,
            (index) => Expanded(
              child: GestureDetector(
                onTap: () => Navigator.popAndPushNamed(
                  context,
                  menuList[index].routeName,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      menuList[index].routeName == routeName
                          ? SvgPicture.asset(menuList[index].iconActive)
                          : SvgPicture.asset(menuList[index].icon),
                      Text(
                        menuList[index].label,
                        style: TextStyle(
                          color: menuList[index].routeName == routeName
                              ? Styles.colorGreen500
                              : Styles.colorBlack200,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
