import 'package:flutter/material.dart';
import 'package:projeto_final_flutter/provider/list_of_animes.dart';
import 'package:projeto_final_flutter/shared/list_of_banner.dart';

class Animes extends StatefulWidget {
  @override
  _AnimesState createState() => _AnimesState();
}

class _AnimesState extends State<Animes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/kaieku_logo.png",
              height: 100,
              width: 100,
            ),
            //Seção de animes populares
            Text(
              "POPULARES",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 10,
            ),
            ListOfBanner(popular),
            SizedBox(
              height: 10,
            ),
            //Seção de animes em alta
            Text(
              "EM ALTA",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 10,
            ),
            ListOfBanner(onTheRise),
            SizedBox(
              height: 10,
            ),
            //Seção de animes já assistidos
            Text(
              "ASSISTIR NOVAMENTE",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 10,
            ),
            ListOfBanner(watchAgain),
          ],
        ),
      ),
    );
  }
}
