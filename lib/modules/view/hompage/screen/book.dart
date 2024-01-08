import 'package:adv_5_government_app/modules/view/detailpage/screens/detail_page.dart';
import 'package:adv_5_government_app/modules/view/detailpage/screens/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark'),
        centerTitle: true,
      ),
      body: ListView(
        children: Provider.of<ServiceData>(context).bookmarks.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Web(url: e.url),
                ),
              );
            },
            child: Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: double.infinity,
                child: Text(
                  e.title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
