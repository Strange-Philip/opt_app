// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savedDiagnosis.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedDiagnosisAdapter extends TypeAdapter<SavedDiagnosis> {
  @override
  final int typeId = 2;

  @override
  SavedDiagnosis read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavedDiagnosis(
      id: fields[0] as String?,
      image: fields[1] as String?,
      diagnosisList: (fields[2] as List).cast<Diagnosis>(),
      date: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SavedDiagnosis obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.diagnosisList)
      ..writeByte(3)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedDiagnosisAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
