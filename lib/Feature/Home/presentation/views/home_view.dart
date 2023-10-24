import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pomodoro_master_app/Core/utils/constants.dart';
import 'package:pomodoro_master_app/Feature/Home/data/models/pomodoro_model.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/views/create_pomodoro_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: Column(
        children: [
          // button to go to the next page
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreatePomodoroView(),
                ),
              );
            },
            child: const Text('Go to the next page'),
          ),
          ElevatedButton(
            onPressed: () {
              // pomodors hive box
              final pomodorsBox = Hive.box<PomodoroModel>(kPomodoroBox);
              print('pomodoros  = ');
              print(pomodorsBox.values.toList());
            },
            child: const Text('show pomodoros'),
          ),
          // SizedBox.expand(
          //   child: DraggableScrollableSheet(
          //     initialChildSize: 0.6,
          //     minChildSize: 0.05,
          //     maxChildSize: 0.8,
          //     builder: (context, ScrollController scrollController) {
          //       return Container(
          //         color: Colors.green,
          //         child: SingleChildScrollView(
          //           controller: scrollController,
          //           child: Column(
          //             children: [
          //               const Text(
          //                 'Some Text',
          //                 style: TextStyle(fontSize: 24),
          //               ),
          //               GridView.count(
          //                 shrinkWrap: true,
          //                 crossAxisCount: 2,
          //                 children: List.generate(10, (index) {
          //                   return Container(
          //                     margin: const EdgeInsets.all(8),
          //                     color: Colors.blue,
          //                     child: Center(
          //                       child: Text(
          //                         'Item $index',
          //                         style: const TextStyle(fontSize: 20),
          //                       ),
          //                     ),
          //                   );
          //                 }),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
