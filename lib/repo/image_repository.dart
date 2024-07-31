import 'dart:convert';

import 'package:flutter_lessons/models/image_model.dart';
import 'package:http/http.dart' as http;

class ImageRepository {
  //connection to an api
  //move this to a repository pattern
  //repositories are classes that encapsulate or contain the logic required to access data sources
  Future<List<PixelformImage>> getNetworkImages() async {
    var endpointUrl = Uri.parse('https://pixelford.com/api/img/small');
    final response = await http.get(endpointUrl);

    if (response.statusCode == 200) {
      final decodedList = jsonDecode(response.body) as List;
      final List<PixelformImage> _imageList = decodedList.map((ListItem) {
        return PixelformImage.fromJson(ListItem);
      }).toList();

      print(_imageList[0].urlFullSize);
      return _imageList;
    } else {
      throw Exception('API not successful');
    }
  }
}
