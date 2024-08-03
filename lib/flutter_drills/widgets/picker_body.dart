import 'package:flutter/material.dart';
import 'package:flutter_lessons/models/image_model.dart';
import 'package:flutter_lessons/repo/image_repository.dart';

class NetworkImagePickerBody extends StatelessWidget {
  final Function(String) onImageSelected;
  final ImageRepository _imageRepo;
  NetworkImagePickerBody({super.key, required this.onImageSelected})
      : _imageRepo = ImageRepository();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PixelformImage>>(
        future: _imageRepo.getNetworkImages(),
        builder: (BuildContext context,
            AsyncSnapshot<List<PixelformImage>> snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      onImageSelected(snapshot.data![index].urlSmallSize);
                    },
                    child: Image.network(snapshot.data![index].urlSmallSize));
              },
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  crossAxisSpacing: 2,
                  mainAxisExtent: 2,
                  maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.5),
            );
            //
          } else if (snapshot.hasError) {
            return Text('This is the error: ${snapshot.error}');
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: CircularProgressIndicator()),
          );
        });
  }
}
