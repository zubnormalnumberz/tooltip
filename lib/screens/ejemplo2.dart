import 'package:like_button/like_button.dart';
import 'package:flutter/material.dart';

class Ejemplo2Tab extends StatefulWidget {
  const Ejemplo2Tab({Key key}) : super(key: key);

  @override
  _Ejemplo2TabState createState() => _Ejemplo2TabState();
}

class _Ejemplo2TabState extends State<Ejemplo2Tab> {
  @override
  void initState() {
    super.initState();
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    return !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68",
                    //height: 150.0,
                    //width: 100.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Tooltip(
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.9),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                          ),
                          textStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          message: "Añadir a mis favoritos",
                          child: LikeButton(
                            likeCount: 665,
                            onTap: onLikeButtonTapped,
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.share),
                          onPressed: null,
                          tooltip: "Share",
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
