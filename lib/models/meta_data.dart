class MetaData {
  int id;
  String value;

  MetaData({
    this.id, 
    this.value, 
  });

  MetaData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _json = new Map<String, dynamic>();
    _json['id'] = id;
    _json['value'] = value;
    return _json;
  }
}