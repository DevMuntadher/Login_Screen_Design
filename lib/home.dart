import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B124C),
      body: Column(
        children: [
          Container(
            height: 300,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 29, 28, 46),
                borderRadius: BorderRadius.circular(100)),
            width: 120,
            height: 120,
            child: Image.asset(
              "images/logo.png",
              width: 50,
              height: 50,
            ),
          ),
          Container(
            height: 100,
          ),
          const Text(
            "Welcome Back",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("login");
                },
                style: TextButton.styleFrom(
                  minimumSize: const Size(350.0, 60.0),
                  // backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(width: 2, color: Colors.black)),
                ),
                child: const Text(
                  "LOG IN",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("signup");
              },
              style: TextButton.styleFrom(
                minimumSize: const Size(350.0, 60.0),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(width: 1, color: Colors.black)),
              ),
              child: const Text(
                "SIGN UP",
                style: TextStyle(fontSize: 20),
              )),
          Container(
            height: 50,
          ),
          const Text(
            "OR",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Text(
            "LogIn With Social Media",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 60,
              child: MaterialButton(
                onPressed: () {},
                child: Image.asset(
                  "images/google.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Container(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              child: Image.asset(
                "images/facebook.png",
                width: 60,
                height: 60,
              ),
            )
          ])
        ],
      ),
    );
  }
}
