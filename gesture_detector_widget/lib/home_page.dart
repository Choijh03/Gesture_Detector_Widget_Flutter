import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberOfTimeTapped = 0;

  void _increaseNumber() {
    setState(() {
      numberOfTimeTapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //vertical location
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped ' + numberOfTimeTapped.toString() + ' times',
              style: TextStyle(fontSize: 30),
            ),
            GestureDetector(
              onTap: _increaseNumber,
              child: Container(
                color: Colors.amber,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'TAP HERE',
                    style: TextStyle(fontSize: 30),
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
