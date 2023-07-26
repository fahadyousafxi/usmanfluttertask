import 'package:flutter/material.dart';
import 'package:usmanfluttertask/models/save_items_model.dart';

class SaveItemsPage extends StatefulWidget {
  const SaveItemsPage({super.key});

  @override
  State<SaveItemsPage> createState() => _SaveItemsPageState();
}

class _SaveItemsPageState extends State<SaveItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Salvati',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: SaveItemsModel().images.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, top: 18),
            child: Row(
              children: [
                Image.asset(
                  SaveItemsModel().images[index],
                  height: 110,
                ),
                const SizedBox(
                  width: 18,
                ),
                SizedBox(
                  height: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        SaveItemsModel().names[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        SaveItemsModel().locations[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Text(
                        SaveItemsModel().prices[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            SaveItemsModel().dis[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: index == 1 ? Colors.amber : Colors.blue),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: index == 1 ? Colors.amber : Colors.blue,
                              boxShadow: [
                                BoxShadow(
                                  color: index == 1
                                      ? Colors.amber.withOpacity(0.5)
                                      : Colors.blue.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: const Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
