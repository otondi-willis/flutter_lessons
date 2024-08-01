import 'package:flutter/material.dart';
import 'package:flutter_lessons/models/image_model.dart';

class NetworkImagePickerBody extends StatelessWidget {
  const NetworkImagePickerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PixelformImage>>(
              future: _imageRepo.getNetworkImages(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<PixelformImage>> snapshot) {
                if (snapshot.hasData)
                  return Image.network(snapshot.data![0].urlSmallSize);
                return CircularProgressIndicator();
              });
  }
}