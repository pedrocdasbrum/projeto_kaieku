import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfAnimes extends StatefulWidget {
  @override
  _ListOfAnimesState createState() => _ListOfAnimesState();
}

class _ListOfAnimesState extends State<ListOfAnimes> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        Text(
          "GENÊROS",
          style: GoogleFonts.roboto(),
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/kaieku_logo.png",
                width: 80,
                height: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "AÇÃO",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/kaieku_logo.png",
                width: 80,
                height: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "AVENTURA",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/kaieku_logo.png",
                width: 80,
                height: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "SCI-FI",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/kaieku_logo.png",
                width: 80,
                height: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ESPORTES",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/kaieku_logo.png",
                width: 80,
                height: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "SOBRENATURAL",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/kaieku_logo.png",
                width: 80,
                height: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ESCOLAR",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/kaieku_logo.png",
                width: 80,
                height: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "FANTASIA",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/images/kaieku_logo.png",
                width: 80,
                height: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "COMÉDIA",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          color: Colors.white,
        ),
      ],
    );
  }
}
