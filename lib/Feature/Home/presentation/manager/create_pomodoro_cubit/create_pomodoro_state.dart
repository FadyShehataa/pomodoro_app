part of 'create_pomodoro_cubit.dart';

sealed class CreatePomodoroState extends Equatable {
  const CreatePomodoroState();

  @override
  List<Object> get props => [];
}

final class CreatePomodoroInitial extends CreatePomodoroState {}
