import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';
import 'create_pomodoro_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: // button to create pomodoro
            ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const CreatePomodoroView();
            }));
          },
          child: const Text('Create Pomodoro'),
        ),
      ),
    );
  }
}
