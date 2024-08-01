import 'package:flutter/material.dart';
import 'package:flutter_lessons/models/image_model.dart';
import 'package:flutter_lessons/repo/image_repository.dart';

class NetworkImagePickerBody extends StatelessWidget {
 
  const NetworkImagePickerBody({super.key, required this.imageRepo});
  
 final ImageRepository imageRepo;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PixelformImage>>(
              future: imageRepo.getNetworkImages(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<PixelformImage>> snapshot) {
                if (snapshot.hasData)
                  return Image.network(snapshot.data![0].urlSmallSize);
                return CircularProgressIndicator();
              });
  }
}