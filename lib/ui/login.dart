import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import '../util/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wavy = WaveWidget(
      config: CustomConfig(
        colors: [
          Colors.red,
          Colors.red[800],
          Colors.orange,
          HexColor.fromHex("E9F5FB")
        ],
        durations: [35000, 19440, 10800, 6000],
        heightPercentages: [0.20, 0.23, 0.25, 0.30],
      ),
      waveAmplitude: 2,
      backgroundColor: Colors.lightBlueAccent,
      size: Size(
        double.infinity,
        double.infinity,
      ),
    );
    return Scaffold(
      backgroundColor: HexColor.fromHex("E9F5FB"),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: wavy,
              height: 320,
            ),
            Center(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 26.0, right: 26.0),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //  logo,
                      Text(
                        "MaxGrow",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: HexColor.fromHex('00AAFF'),
                            fontSize: 45),
                      ),
                      Text("Feeder",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.blue[800],
                              fontSize: 45)),
                    ],
                  ),
                  SizedBox(height: 9),
                  Text(
                    "Sahabat anda untuk maju !",
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    //      color: HexColor.fromHex("ABB5BA")),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                  //logo,
                  SizedBox(
                    height: 70.0,
                  ),
                  LoginForm(
                    hints: "Email",
                    icon: Icons.email,
                    inputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  LoginForm(
                    hints: "Password",
                    icon: Icons.vpn_key,
                    inputType: TextInputType.visiblePassword,
                    password: true,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: HexColor.fromHex("00AAFF"))),
                    onPressed: () {},
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    child: Text("LOGIN".toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18)),
                  ),
                  Divider(
                    height: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    "MaxGrow Indonesia © 2020",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
    this.hints,
    this.icon,
    this.inputType,
    this.password = false,
  }) : super(key: key);

  final TextInputType inputType;
  final IconData icon;
  final String hints;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: TextField(
          style:
              TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w500),
          keyboardType: inputType,
          autofocus: false,
          obscureText: password,
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.lightBlue[400],
            ),
            hintStyle: TextStyle(color: Colors.lightBlueAccent),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                color: HexColor.fromHex('C6DFEC'),
              ),
            ),
            filled: true,
            fillColor: HexColor.fromHex('fbfdfe'),
            hintText: hints,
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          )),
    );
  }
}
