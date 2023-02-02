import 'package:flutter/material.dart';

class DetailHistoryPage extends StatefulWidget {
  const DetailHistoryPage({super.key});

  @override
  State<DetailHistoryPage> createState() => _DetailHistoryPageState();
}

class _DetailHistoryPageState extends State<DetailHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () =>
                    Navigator.popAndPushNamed(context, '/dashboard_reader'),
                child: const Icon(
                  Icons.arrow_back,
                  size: 20.0,
                  color: Colors.purple,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Card(
                    elevation: 0.0,
                    child: Image.asset(
                      'assets/BookCover2.png',
                      fit: BoxFit.fill,
                      width: 210.0,
                      height: 290.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Nature Kingdom',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Sami Sabino',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  const Text(
                    'If the user presses OK then value will be true. If the user backs out of the route, for example by pressing the Scaffolds back button, the value will be null.',
                  ),
                  const Text(
                    'When a route is used to return a value, the routes type parameter must match the type of pops result. Thats why used MaterialPageRoute<bool> instead of MaterialPageRoute<void> or just MaterialPageRoute. If you prefer to not specify the types, though, thats fine too.',
                  ),
                  const Text(
                    'If the user presses OK then value will be true. If the user backs out of the route, for example by pressing the Scaffolds back button, the value will be null.',
                  ),
                  const Text(
                    'If the user presses OK then value will be true. If the user backs out of the route, for example by pressing the Scaffolds back button, the value will be null.',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () => {print('Má clissificação')},
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 35.0,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () => {print('Boa clissificação')},
                          child: const Icon(
                            Icons.arrow_drop_up_sharp,
                            size: 35.0,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
