part of "../home.dart";

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      floating: true,
      snap: true,
      pinned: true,
      elevation: 1,
      title: Text(
        "Hi, Pocketers!",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
