import 'package:eas_ppb/src/navbar/navbar_widget.dart';
import 'package:eas_ppb/src/styles/styles.dart';
import 'package:eas_ppb/util/launch_url.dart';
import 'package:flutter/material.dart';

part 'widgets/home_app_bar.dart';
part 'widgets/home_user_card.dart';
part 'widgets/home_transaction_options_button.dart';
part 'widgets/home_products_title.dart';
part 'widgets/home_product_list.dart';
part 'widgets/home_event.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          HomeUserCard(),
          HomeTransactionOptionsButton(),
          HomeProductsTitle(),
          HomeProductList(),
          HomeEvent(),
        ],
      ),
      // bottom bar section
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomNavWidget(routeName: Home.routeName),
    );
  }
}
