import 'package:flutter/material.dart';

class itemsCard extends StatelessWidget {
  final image;

  const itemsCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // fav icon
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // price
                      Text(
                        '\$ 13.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),

                      // title
                      Text(
                        'Vegetarian Pizza',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
