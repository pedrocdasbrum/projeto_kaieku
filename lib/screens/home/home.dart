import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_final_flutter/screens/list_of_screens.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/kaieku_logo.png",
                    height: 40,
                    width: 40,
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
        ),
      ),
      body: listOfScreens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //Guia de início
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: "Início",
          ),
          //Guia de catálogo
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_module_outlined,
              color: Colors.black,
            ),
            label: "Catálogo",
          ),
          //Guia de conta
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
            label: "Conta",
          ),
        ],
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            //Mudar guia
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
