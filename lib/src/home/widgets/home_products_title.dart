part of '../home.dart';

class HomeProductsTitle extends StatelessWidget {
  const HomeProductsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          top: 16,
          right: 16,
          left: 16,
          bottom: 8,
        ),
        child: Text(
          "Product Recommend",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
