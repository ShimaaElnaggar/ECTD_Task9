
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Done",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.done,
              size: 50,
              color: Colors.white,
            ),
          ],
        ),
      ),

    );
  }
}
