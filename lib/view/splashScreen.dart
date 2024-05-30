import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              width : MediaQuery.of(context).size.width,
              height : 300,
              "https://i.kym-cdn.com/entries/icons/original/000/022/747/Do_Something_meme_banner_imag.jpg"),
          SizedBox(height: 30,),
          Text("bdsM App" , style: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}