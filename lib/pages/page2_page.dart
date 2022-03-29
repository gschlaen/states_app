import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states_app/models/user.dart';
import 'package:states_app/services/user_provider.dart';

class Page2Page extends StatelessWidget {
  const Page2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: userService.userExist ? Text('Name: ${userService.user!.name}') : const Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text('Set User', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                final newUser = User(
                  name: 'Ruben Schlaen',
                  age: 39,
                  professions: ['Fullstack Developer', 'Guitar Player'],
                );
                userService.user = newUser;
              },
            ),
            MaterialButton(
              child: const Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                userService.changeAge(30);
              },
            ),
            MaterialButton(
              child: const Text('Add Profession', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                userService.addProfession();
              },
            ),
          ],
        ),
      ),
    );
  }
}
