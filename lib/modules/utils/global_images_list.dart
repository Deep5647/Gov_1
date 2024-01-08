import '../view/hompage/model/all_gov_service_model.dart';

class GlobalGovData {
  static List<GovServiceData> allGovData = [
    GovServiceData(
        name: "UIDAI",
        image: "assets/images/uidai.png",
        link: 'https://uidai.gov.in'),
    GovServiceData(
        name: "Umang",
        image: "assets/images/umang.png",
        link: 'https://web.umang.gov.in'),
    GovServiceData(
        name: "Parivahan",
        image: "assets/images/parivahan.png",
        link: 'https://parivahan.gov.in/parivahan'),
    GovServiceData(
        name: "India-Portal",
        image: "assets/images/india-portal.png",
        link: "https://www.india.gov.in"),
    GovServiceData(
        name: "EPFO",
        image: "assets/images/epfo.png",
        link: "https://www.epfindia.gov.in/site_en/index.php"),
    GovServiceData(
        name: "Digital-India",
        image: "assets/images/digital-india.png",
        link: "https://digitalindia.gov.in"),
    GovServiceData(
        name: "Digilocker",
        image: "assets/images/digilocker.png",
        link: "https://www.digilocker.gov.in"),
    GovServiceData(
        name: "Career",
        image: "assets/images/career.png",
        link: "https://www.ncs.gov.in"),
  ];
}


/*

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> numbers = [
    "https://wallpapercave.com/wp/fnDZW2l.jpg",
    "https://i.pinimg.com/originals/7f/a7/bb/7fa7bb83f07e1eb17e768b3d6dabbef7.jpg",
    "https://cdn.wallpapersafari.com/8/97/dwNPfm.jpg",
    "https://wallup.net/wp-content/uploads/2016/01/132930-nature-landscape-flowers.jpg",
    "https://www.wallpapertip.com/wmimgs/15-153165_sunshine-on-the-mountain.jpg",
  ];

  int changedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 220,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                viewportFraction: 0.9,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 1),
                onPageChanged: (val, _) {
                  setState(() {
                    changedPage = val;
                  });
                }),
            items: numbers
                .map(
                  (e) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(e),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: numbers
                .map(
                  (e) => Container(
                    height: 8,
                    width: 8,
                    margin: EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      color: (changedPage == numbers.indexOf(e))
                          ? Colors.blue
                          : Colors.grey.shade400,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

 */