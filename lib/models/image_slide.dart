class ImageSlide {
  String source;

  ImageSlide({
    this.source, 
  });

  ImageSlide.fromJson(Map<String, dynamic> json) {
    source = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _json = new Map<String, dynamic>();
    _json['rendered'] = source;
    return _json;
  }
}