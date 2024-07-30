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
}
