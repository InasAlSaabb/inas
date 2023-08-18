class SpecializationModel {
  int? id;
  String? name;
  String? category;

  SpecializationModel({this.id, this.name, this.category});

  SpecializationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category'] = this.category;
    return data;
  }
}
