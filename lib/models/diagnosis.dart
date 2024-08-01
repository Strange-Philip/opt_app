import 'package:hive/hive.dart';
part 'diagnosis.g.dart';

@HiveType(typeId: 1)
class Diagnosis {
  @HiveField(0)
  String? diagnosis;
  @HiveField(1)
  String? reason;
  @HiveField(2)
  List<dynamic> symptoms = [];
  @HiveField(3)
  List<dynamic> ocularTests = [];

  Diagnosis(
      {this.diagnosis = "",
      this.reason = "",
      this.symptoms = const [],
      this.ocularTests = const []});

  Diagnosis.fromJson(Map<String, dynamic> json) {
    diagnosis = json['diagnosis'];
    reason = json['reason'];
    symptoms = json['symptoms'];
    ocularTests = json['ocularTests'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['diagnosis'] = diagnosis;
    data['reason'] = reason;
    data['symptoms'] = symptoms;
    data['ocularTests'] = ocularTests;
    return data;
  }
}
