import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade500,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Get\nOrganic Food",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                'Find the freshest food and get\nfree delivry in your town',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {},
                height: 55,
                minWidth: 240,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green.shade300,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/image/crop.png',
                  height: 400,
                  width: 400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
