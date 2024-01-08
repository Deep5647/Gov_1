import 'package:flutter/material.dart';

import '../../../utils/global_images_list.dart';
import '../../detailpage/screens/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gov. Service App"),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('Book');
          }, icon: const Icon(Icons.bookmark_border))

        ],
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          children: GlobalGovData.allGovData
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Web(url: e.link),
                      ),
                    );
                    //Navigator.of(context).pushNamed('Web', arguments: e);
                  },
                  child: Card(
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(e.image),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Chip(
                                label: Text(
                                  e.name,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
