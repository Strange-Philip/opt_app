// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiagnosisAdapter extends TypeAdapter<Diagnosis> {
  @override
  final int typeId = 1;

  @override
  Diagnosis read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diagnosis(
      diagnosis: fields[0] as String?,
      reason: fields[1] as String?,
      symptoms: (fields[2] as List).cast<dynamic>(),
      ocularTests: (fields[3] as List).cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, Diagnosis obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.diagnosis)
      ..writeByte(1)
      ..write(obj.reason)
      ..writeByte(2)
      ..write(obj.symptoms)
      ..writeByte(3)
      ..write(obj.ocularTests);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiagnosisAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
