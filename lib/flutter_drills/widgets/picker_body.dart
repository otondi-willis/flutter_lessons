import 'package:flutter/material.dart';
import 'package:flutter_lessons/models/image_model.dart';
import 'package:flutter_lessons/repo/image_repository.dart';

class NetworkImagePickerBody extends StatelessWidget {
  NetworkImagePickerBody({super.key});

  final ImageRepository _imageRepo;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PixelformImage>>(
        future: _imageRepo.getNetworkImages(),
        builder: (BuildContext context,
            AsyncSnapshot<List<PixelformImage>> snapshot) {
          if (snapshot.hasData) {
            ListView.builder(itemBuilder: itemBuilder)
            return Image.network(snapshot.data![0].urlSmallSize);
          }
          return CircularProgressIndicator();
        });
  }
}
