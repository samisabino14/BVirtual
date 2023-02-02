import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pdm_project/pages/authentication/login_screen.dart';

class DashboardWriterPage extends StatefulWidget {
  const DashboardWriterPage({super.key});

  @override
  State<DashboardWriterPage> createState() => _DashboardWriterPageState();
}

class _DashboardWriterPageState extends State<DashboardWriterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 12.0),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu, color: Colors.purple, size: 30.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () => {
                        Navigator.pop(context),
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => const DashboardWriterPage(),
                          ),
                        ),
                      },
                      child: const Icon(
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
            const SizedBox(height: 30.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Suas obras',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30.0),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'The Hobbit', '4.2', 'assets/BookCover1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Nature Kingdom', '4.2', 'assets/BookCover2.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Still Standing', '4.2', 'assets/BookCover3.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'The Hipocrite', '4.2', 'assets/BookCover4.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Murder Most', '4.2', 'assets/BookCover5.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Mais lidas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'The Hobbit', '4.2', 'assets/BookCover1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Nature Kingdom', '4.2', 'assets/BookCover2.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Still Standing', '4.2', 'assets/BookCover3.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'The Hipocrite', '4.2', 'assets/BookCover4.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: HistoryCard(
                        'Murder Most', '4.2', 'assets/BookCover5.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.popAndPushNamed(context, '/register_history_page'),
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20,
        ),
        child: GNav(
          backgroundColor: Colors.white,
          //color: Colors.grey,
          activeColor: Colors.purple,
          //tabBackgroundColor: Colors.grey,
          gap: 8,
          //padding: EdgeInsets.all(10),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Início",
            ),
            GButton(
              icon: Icons.favorite,
              text: "Favorite",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
            GButton(
              icon: Icons.person,
              text: "Perfil",
            ),
          ],
        ),
      ),
    );
  }

  Widget HistoryCard(String historyName, String author, String imgPath) {
    return InkWell(
      onTap: () {
        Navigator.popAndPushNamed(context, '/details_history_writer');
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
