class AdviceModel {
  final int id;
  final String advice;

  AdviceModel({required this.id, required this.advice});

  factory AdviceModel.fromJson(Map<String, dynamic> json) {
    return AdviceModel(id: json['advice_id'], advice: json['advice']);
  }
}
