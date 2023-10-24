part of 'create_pomodoro_cubit.dart';

sealed class CreatePomodoroState extends Equatable {
  const CreatePomodoroState();

  @override
  List<Object> get props => [];
}

final class CreatePomodoroInitial extends CreatePomodoroState {}

final class CreatePomodoroChangLoading extends CreatePomodoroState {}

final class CreatePomodoroChangSuccess extends CreatePomodoroState {}

final class AddPomodoroLoading extends CreatePomodoroState {}

final class AddPomodoroSuccess extends CreatePomodoroState {}

final class AddPomodoroFailure extends CreatePomodoroState {
  final String message;

  const AddPomodoroFailure({required this.message});
}
