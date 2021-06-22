import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.5),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  //Fechar a guia
                  Navigator.of(context).pop();
                },
                icon: Image.asset(
                  "assets/images/kaieku_logo.png",
                  height: 40,
                  width: 40,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Kaieku",
                style: GoogleFonts.roboto(),
              ),
            ],
          ),
          Icon(
            Icons.search_outlined,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
