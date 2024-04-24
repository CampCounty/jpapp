import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 148, 148),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 400),
            Container(
              width: 300,
              height: 150,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(32, 0, 0, 0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SingleChildScrollView(
                    //scrollDirection: Axis.horizontal,
                    child: Text(
                      "Feeling Snackish Today?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Explore Angi's most popular snack selection and get instantly happy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Verlängerter rosa Button mit abgerundeten Ecken und Glow-Effekt
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Navigieren Sie hier zu Ihrer nächsten Seite
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Container(
                  height: 50,
                  width: 200, // Buttonhöhe erhöhen
                  decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 233, 84, 134),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Order Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
