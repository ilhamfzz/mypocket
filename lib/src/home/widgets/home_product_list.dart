part of '../home.dart';

class HomeProductList extends StatelessWidget {
  const HomeProductList({super.key});

  static const product = [
    {
      "name": "Credit 15K",
      "price": 15000,
      "image": "assets/images/background_home_card_credits.jpg",
    },
    {
      "name": "Credit 25K",
      "price": 25000,
      "image": "assets/images/background_home_card_credits.jpg",
    },
    {
      "name": "Data Quota 30GB",
      "price": 60000,
      "image": "assets/images/background_home_card_quota_data.jpg",
    },
    {
      "name": "Data Quota 50GB",
      "price": 100000,
      "image": "assets/images/background_home_card_quota_data.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200, // Set a fixed height for the list
        child: ListView.builder(
          itemCount: product.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = product[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 4,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        item["image"] as String,
                        fit: BoxFit.cover,
                        width: 150, // Adjust width to fit your needs
                        height: 100, // Adjust height to fit your needs
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, left: 12, right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["name"] as String,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Rp ${item["price"]}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
