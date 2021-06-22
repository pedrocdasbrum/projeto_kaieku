import 'package:flutter/material.dart';
import 'package:projeto_final_flutter/models/anime.dart';
import 'package:projeto_final_flutter/screens/widgets/custom_appbar.dart';
import 'package:projeto_final_flutter/screens/widgets/custombuttons.dart';

late Anime _anime;

class Information extends StatefulWidget {
  Information(Anime animeSend) {
    _anime = animeSend;
  }

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  late int _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    _anime.photoBanner,
                  ),
                  CustomAppBar(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _anime.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _anime.sinopsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              CustomButtons(),
            ],
          ),
        ),
      ),
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
          //Fechar a guia
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
