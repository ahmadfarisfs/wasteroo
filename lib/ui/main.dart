import 'package:flutter/material.dart';
import '../util/color.dart';

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.fromHex("E9F5FB"),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black87,
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                alignment: Alignment.topCenter,
//                color: Colors.white,
                height: 150,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    //     color: Colors.yellow,
                    alignment: Alignment.topLeft,
//                    alignment: AlignmentDirectional.topStart,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            //      color: Colors.blueAccent,
                            child: Column(
//                      mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Hey, ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Ahda",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: HexColor.fromHex('00AAFF'),
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.0),
                                Text(
                                  "Saat ini Anda memiliki 2 feeder unggas dan 2 feeder ikan lele aktif",
                                  softWrap: true,
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerRight,
//                            color: Colors.cyan,
                            child: Hero(
                              tag: 'hero',
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://googleflutter.com/sample_image.jpg'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
