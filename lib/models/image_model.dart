
//letting dart know this is class you want generated code for
import 'package:json_annotation/json_annotation.dart';
part 'image_model.g.dart';

@JsonSerializable()
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

      @JsonKey(name: 'url_full_size')
      required this.urlFullSize,
      @JsonKey(name: 'url_small_size')
      required this.urlSmallSize});

      factory PixelformImage.fromJson(Map<String, dynamic> json) => _$PixelformImageFromJson(json);

  /// Connect the generated [_$PixelformImageToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PixelformImageToJson(this);
}
