// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileAdapter extends TypeAdapter<Profile> {
  @override
  final int typeId = 0;

  @override
  Profile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Profile(
      email: fields[0] as String,
      firstName: fields[1] as String,
      heading: fields[2] as String,
      lastName: fields[3] as String,
      phone: fields[4] as String,
      photograph: fields[5] as String,
      subtitle: fields[6] as String,
      website: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Profile obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.heading)
      ..writeByte(3)
      ..write(obj.lastName)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.photograph)
      ..writeByte(6)
      ..write(obj.subtitle)
      ..writeByte(7)
      ..write(obj.website);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
