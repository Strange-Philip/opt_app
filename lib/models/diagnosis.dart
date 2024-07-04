class TentDiagnosis {
  String? diagnosis;
  String? reason;
  List<String> symptoms = [];
  List<String> ocularTests = [];

  TentDiagnosis(
      {this.diagnosis = "",
      this.reason = "",
      this.symptoms = const [],
      this.ocularTests = const []});

  TentDiagnosis.fromJson(Map<String, dynamic> json) {
    diagnosis = json['diagnosis'];
    reason = json['reason'];
    symptoms = json['symptoms'].cast<String>();
    ocularTests = json['ocularTests'].cast<String>();
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
