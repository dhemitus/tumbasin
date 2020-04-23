class ImageSource {
  String id;
  String source;
  String name;

  ImageSource({
    this.id, 
    this.source, 
    this.name, 
  });

  ImageSource.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    source = json['src'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _json = new Map<String, dynamic>();
    _json['id'] = id;
    _json['src'] = source;
    _json['name'] = name;
    return _json;
  }
}