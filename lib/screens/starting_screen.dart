import 'package:flutter/material.dart';

import '../my_class/my_routes.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: NetworkImage(
              "https://thumbs.dreamstime.com/b/groceries-23958998.jpg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Dunzo Daily",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 80,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.of(context).pushNamed(MyRoutes.overviewRoutes);
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
            ),
          )
        ],
      ),
    );




  }
}
