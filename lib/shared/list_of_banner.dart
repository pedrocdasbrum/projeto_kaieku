import 'package:flutter/material.dart';
import 'package:projeto_final_flutter/models/anime.dart';
import 'package:projeto_final_flutter/screens/information/information.dart';

class ListOfBanner extends StatelessWidget {
  final List<Anime> animes;

  ListOfBanner(this.animes);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 245,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: builder,
        itemCount: this.animes.length,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Anime anime = this.animes.elementAt(index);

    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Image.asset(
          anime.photo,
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext _) {
              return Information(anime);
            },
          ),
        );
      },
    );
  }
}
