// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PomodoroModelAdapter extends TypeAdapter<PomodoroModel> {
  @override
  final int typeId = 0;

  @override
  PomodoroModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PomodoroModel(
      title: fields[0] as String,
      pomodoroTime: fields[1] as int,
      shortBreakTime: fields[2] as int,
      longBreakTime: fields[3] as int,
      pomodorosUntilLongBreak: fields[4] as int,
      autoStartBreaks: fields[5] as bool,
      autoStartPomodoro: fields[6] as bool,
      color: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PomodoroModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.pomodoroTime)
      ..writeByte(2)
      ..write(obj.shortBreakTime)
      ..writeByte(3)
      ..write(obj.longBreakTime)
      ..writeByte(4)
      ..write(obj.pomodorosUntilLongBreak)
      ..writeByte(5)
      ..write(obj.autoStartBreaks)
      ..writeByte(6)
      ..write(obj.autoStartPomodoro)
      ..writeByte(7)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PomodoroModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
