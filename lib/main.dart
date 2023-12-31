import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro_master_app/Core/utils/constants.dart';
import 'package:pomodoro_master_app/Feature/Home/presentation/manager/create_pomodoro_cubit/create_pomodoro_cubit.dart';
import 'package:pomodoro_master_app/simple_bloc_observer.dart';

import 'Core/utils/my_colors.dart';
import 'Feature/Home/data/models/pomodoro_model.dart';
import 'Feature/Home/presentation/manager/theme_cubit/theme_cubit.dart';
import 'Feature/Home/presentation/views/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PomodoroModelAdapter());
  await Hive.openBox<PomodoroModel>(kPomodoroBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(
    DevicePreview(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider(
            create: (context) => CreatePomodoroCubit(),
          ),
        ],
        child: const PomodoroMasterApp(),
      ),
    ),
  );
}

class PomodoroMasterApp extends StatelessWidget {
  const PomodoroMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeCubit.isDark
          ? ThemeData.dark().copyWith(
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: MyColors.myWhite),
              ),
              colorScheme: ThemeData().colorScheme.copyWith(
                    primary: MyColors.myOrange,
                    brightness: Brightness.dark,
                  ),
            )
          : ThemeData.light().copyWith(
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: MyColors.myBlack),
              ),
              scaffoldBackgroundColor: MyColors.myGrey,
              colorScheme: ThemeData().colorScheme.copyWith(
                    primary: MyColors.myOrange,
                    brightness: Brightness.light,
                  ),
            ),
      builder: DevicePreview.appBuilder,
      home: const HomeView(),

      // AnimatedSplashScreen(
      //   splash: Text('Pomodoro Master', style: Styles.textStyle36),
      //   nextScreen: const HomeView(),
      //   splashTransition: SplashTransition.scaleTransition,
      //   duration: 2000,
      //   curve: Curves.easeOut,
      //   animationDuration: const Duration(milliseconds: 1500),
      //   pageTransitionType: PageTransitionType.rightToLeftWithFade,
      //   backgroundColor:
      //       themeCubit.isDark ? MyColors.myDarkGrey : MyColors.myGrey,
      // ),
    );
  }
}
