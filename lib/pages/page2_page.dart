import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states_app/bloc/user/user_cubit.dart';
import 'package:states_app/models/user.dart';

class Page2Page extends StatelessWidget {
  const Page2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubitUser = context.read<UserCubit>();

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
              onPressed: () {
                final newUser = User(
                  name: 'Ruben Schlaen',
                  age: 39,
                  professions: [
                    'FullStack Developer',
                    'Guitar PLayer',
                  ],
                );

                cubitUser.selectUser(newUser);
              },
            ),
            MaterialButton(
              child: const Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                cubitUser.changeAge(30);
              },
            ),
            MaterialButton(
              child: const Text('Add Profession', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                cubitUser.addProfession();
              },
            ),
          ],
        ),
      ),
    );
  }
}
