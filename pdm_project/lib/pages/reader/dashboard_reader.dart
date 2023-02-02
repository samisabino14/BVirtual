import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pdm_project/pages/authentication/login_screen.dart';

class DashboardReaderPage extends StatefulWidget {
  const DashboardReaderPage({super.key});

  @override
  State<DashboardReaderPage> createState() => _DashboardReaderPageState();
}

class _DashboardReaderPageState extends State<DashboardReaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 12.0),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: Colors.purple, size: 30.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () => {
                        Navigator.pop(context),
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => DashboardReaderPage(),
                          ),
                        ),
                      },
                      child: Icon(
                        Icons.search,
                        size: 20.0,
                        color: Colors.purple,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        Navigator.pop(context),
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => LoginPage(),
                          ),
                        ),
                      },
                      child: const Icon(
                        Icons.logout,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 230,
              child: Card(
                elevation: 0.0,
                child: Image.asset(
                  'assets/BookCover1.png',
                  fit: BoxFit.cover,
                  width: 110.0,
                  height: 160.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Populares',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'The Hobbit', '4.2', 'assets/BookCover1.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Nature Kingdom', '4.2', 'assets/BookCover2.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Still Standing', '4.2', 'assets/BookCover3.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'The Hipocrite', '4.2', 'assets/BookCover4.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Murder Most', '4.2', 'assets/BookCover5.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Sugestões',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () => Navigator.popAndPushNamed(
                          context, '/details_history'),
                      child: HistoryCard(
                        'Murder Most',
                        'Salvas Barn',
                        'assets/BookCover5.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () => Navigator.popAndPushNamed(
                          context, '/details_history'),
                      child: HistoryCard(
                        'Murder Most',
                        'Obito Kachi',
                        'assets/BookCover4.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () => Navigator.popAndPushNamed(
                          context, '/details_history'),
                      child: HistoryCard(
                        'Murder Most',
                        'Flávio Saldanha',
                        'assets/BookCover3.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: HistoryCard(
                      'Murder Most',
                      'Adão Santana',
                      'assets/BookCover2.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget HistoryCard(String historyName, String author, String imgPath) {
    return InkWell(
      onTap: () {
        Navigator.popAndPushNamed(context, '/details_history');
      },
      child: Column(
        children: [
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
              width: 110.0,
              height: 160.0,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            historyName,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 5.0),
          Text(
            author,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
/*

            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Colors.purple, size: 30.0),
                  /*Image.asset(
                  'assets/BookCover1.png',
                  width: 50.0,
                ),*/
                  Icon(
                    Icons.logout,
                    color: Colors.purple,
                    size: 30.0,
                  )
                ],
              ),
            ),
 */