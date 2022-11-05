import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class GifPage extends StatelessWidget {
  final Map? _gifData;

  const GifPage(this._gifData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData?["title"]),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              FlutterShare.share(
                  title: "Compartilhamento",
                  text: "Confira o GIF bolado :)",
                  linkUrl: _gifData?["images"]["fixed_height"]["url"],
                  chooserTitle: "Escolha um modo de compartilhamento"
              );
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData?["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
