import 'package:adv_5_government_app/modules/view/detailpage/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'modules/view/hompage/screen/book.dart';
import 'modules/view/detailpage/screens/provider.dart';
import 'modules/view/hompage/screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [

          ChangeNotifierProvider(
            create: (context) => ServiceData(),
          ),
        ],
        builder: (context, _) {
          return MaterialApp(
            theme: ThemeData.light(useMaterial3: true),

            debugShowCheckedModeBanner: false,


            routes: {
              '/': (context) => const HomePage(),
              //'spl': (context) => const spl(),
              'Book': (context) => const Book(),



            },
          );
        }
    );
  }
}

