import 'package:flutter/material.dart';

class Page2Page extends StatelessWidget {
  const Page2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text('Set User', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {},
            ),
            MaterialButton(
              child: const Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {},
            ),
            MaterialButton(
              child: const Text('Add Profession', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
