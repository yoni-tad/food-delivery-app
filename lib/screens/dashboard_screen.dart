import 'package:flutter/material.dart';
import 'package:food_delivery/utils/category.dart';
import 'package:food_delivery/utils/items_card.dart';

class dashboardScreen extends StatefulWidget {
  const dashboardScreen({super.key});

  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}

class _dashboardScreenState extends State<dashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // cart icon
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                'Food Delivery',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              // category
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      foodCategory(
                        isActive: true,
                        title: 'Pizza',
                      ),
                      foodCategory(
                        isActive: false,
                        title: 'Burgers',
                      ),
                      foodCategory(
                        isActive: false,
                        title: 'Kebab',
                      ),
                      foodCategory(
                        isActive: false,
                        title: 'Desert',
                      ),
                      foodCategory(
                        isActive: false,
                        title: 'Salad',
                      ),
                    ],
                  ),
                ),
              ),

              // items
              Text(
                'Free delivery',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      itemsCard(image: 'assets/images/two.jpg',),
                      itemsCard(image: 'assets/images/five.jpg',),
                      itemsCard(image: 'assets/images/four.jpg',),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
