// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PeopleAdapter extends TypeAdapter<People> {
  @override
  final int typeId = 1;

  @override
  People read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return People(
      name: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, People obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeopleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
