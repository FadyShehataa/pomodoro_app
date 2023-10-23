import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('on change $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('on close ${bloc.runtimeType}');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('on create ${bloc.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
