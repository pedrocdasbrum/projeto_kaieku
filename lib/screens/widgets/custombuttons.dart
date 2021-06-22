import 'package:flutter/material.dart';
import 'package:projeto_final_flutter/provider/list_of_animes.dart';
import 'package:projeto_final_flutter/shared/list_of_banner.dart';

class CustomButtons extends StatefulWidget {
  @override
  _CustomButtonsState createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Gostei",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow_outlined,
                      ),
                      label: Text(
                        "Assistir",
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        Text(
                          "Detalhes",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Em Alta",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListOfBanner(onTheRise),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
