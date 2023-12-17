import 'package:flutter/material.dart';
import 'package:food_delivery/screens/dashboard_screen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/one.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title text
                const Text(
                  'Taking Order For Faster Delivery',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),

                // sub-title text
                const Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: Text(
                    'See resturants nearby by \nadding your location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 100),

                // start button
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.yellow,
                        Colors.orange,
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => dashboardScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: const Text(
                      'Start',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // bottom text
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Now Deliver To your Door 24/7',
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
