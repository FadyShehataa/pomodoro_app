import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pomodoro_master_app/simple_bloc_observer.dart';

import 'Core/utils/my_colors.dart';
import 'Core/utils/styles.dart';
import 'Feature/Home/presentation/manager/theme_cubit/theme_cubit.dart';
import 'Feature/Home/presentation/views/home_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  runApp(
    DevicePreview(
      builder: (context) => BlocProvider(
        create: (_) => ThemeCubit(),
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
      // theme: themeCubit.isDark
      //     ? ThemeData.dark().copyWith(
      //         appBarTheme: const AppBarTheme(
      //           iconTheme: IconThemeData(color: MyColors.myWhite),
      //         ),
      //         colorScheme: ThemeData().colorScheme.copyWith(
      //               primary: MyColors.myOrange,
      //               brightness: Brightness.dark,
      //             ),
      //       )
      //     : ThemeData.light().copyWith(
      //         appBarTheme: const AppBarTheme(
      //           iconTheme: IconThemeData(color: MyColors.myBlack),
      //         ),
      //         scaffoldBackgroundColor: MyColors.myGrey,
      //         colorScheme: ThemeData().colorScheme.copyWith(
      //               primary: MyColors.myOrange,
      //               brightness: Brightness.light,
      //             ),
      //       ),

      builder: DevicePreview.appBuilder,
      home: AnimatedSplashScreen(
        splash: Text('Pomodoro Master', style: Styles.textStyle48),
        nextScreen: const HomeView(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 2000,
        curve: Curves.easeOut,
        animationDuration: const Duration(milliseconds: 1500),
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        backgroundColor:
            themeCubit.isDark ? MyColors.myDarkGrey : MyColors.myGrey,
      ),
    );
  }
}
