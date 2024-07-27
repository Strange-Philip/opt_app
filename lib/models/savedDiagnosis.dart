import 'package:hive/hive.dart';
import 'package:opt_app/models/diagnosis.dart';
part 'savedDiagnosis.g.dart';

@HiveType(typeId: 2)
class SavedDiagnosis {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? image;
  @HiveField(2)
  List<Diagnosis> diagnosisList = [];

  SavedDiagnosis({this.id = "", this.image = "", this.diagnosisList = const []});

  SavedDiagnosis.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    diagnosisList = json['diagnosisList'].cast<Diagnosis>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['diagnosisList'] = diagnosisList;
    return data;
  }
}
