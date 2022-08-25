// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StorageAdapter extends TypeAdapter<Storage> {
  @override
  final int typeId = 1;

  @override
  Storage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Storage(
      id: fields[1] as String,
      omuz: fields[2] as String,
      gogus: fields[3] as String,
      solKol: fields[4] as String,
      sagKol: fields[5] as String,
      sirt: fields[6] as String,
      bel: fields[7] as String,
      time: fields[8] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Storage obj) {
    writer
      ..writeByte(8)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.omuz)
      ..writeByte(3)
      ..write(obj.gogus)
      ..writeByte(4)
      ..write(obj.solKol)
      ..writeByte(5)
      ..write(obj.sagKol)
      ..writeByte(6)
      ..write(obj.sirt)
      ..writeByte(7)
      ..write(obj.bel)
      ..writeByte(8)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StorageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
