import 'package:flutter/material.dart';

class ItemGridView extends StatelessWidget {
  final String title;
  final String description;
  final String date;

  const ItemGridView({
    super.key,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Theme(
                  data: Theme.of(context).copyWith(
                      cardColor: Colors.black,
                      popupMenuTheme: const PopupMenuThemeData(
                        color: Colors.black,
                        elevation: 0,
                      )),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    // color: Colors.red,

                    child: PopupMenuButton(
                      padding: EdgeInsets.zero,
                      // constraints: BoxConstraints(maxHeight: 5, maxWidth: 5),
                      // color: Colors.black,
                      position: PopupMenuPosition.under,
                      iconSize: 30,
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),

                      itemBuilder: (context) {
                        return [
                          const PopupMenuItem(
                            value: 0,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: const Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    "example1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ];
                      },
                      onSelected: (value) async {
                        switch (value) {
                          case 0:
                            break;
                        }
                      },
                    ),
                  ))
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            description,
            style: const TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              date,
              style: const TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
