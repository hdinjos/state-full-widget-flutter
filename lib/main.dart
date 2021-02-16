import "package:flutter/material.dart";
import "package:cached_network_image/cached_network_image.dart";

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Gambar"),
        ),
        body: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/walking_out.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all()),
            ),
            ClipOval(
              child: Image(
                image: AssetImage("assets/images/walking_out.png"),
                width: 150,
                height: 150,
                color: Colors.grey,
                colorBlendMode: BlendMode.hue,
                fit: BoxFit.cover,
              ),
            ),
            CachedNetworkImage(
              color: Colors.grey,
              colorBlendMode: BlendMode.saturation,
              width: 150,
              height: 150,
              imageUrl:
                  "https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Text("Konenksi Error"),
            ),
            Image.asset(
              "assets/images/fun_nature.png",
              width: 200,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
