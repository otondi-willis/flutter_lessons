class PixelformImage {
  String id;
  String filename;
  String? title;
  String urlFullSize;
  String urlSmallSize;

  PixelformImage(
      {required this.id,
      required this.filename,
      this.title,
      required this.urlFullSize,
      required this.urlSmallSize});

      factory PixelformImage.fromJson(Map<String, dynamic> json) => _$PixelformImageFromJson(json);

  /// Connect the generated [_$PixelformImageToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PixelformImageToJson(this);
}
