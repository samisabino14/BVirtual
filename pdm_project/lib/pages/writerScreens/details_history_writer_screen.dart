import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsHistoryWriterPage extends StatefulWidget {
  const DetailsHistoryWriterPage({super.key});

  @override
  State<DetailsHistoryWriterPage> createState() =>
      _DetailsHistoryWriterPageState();
}

class _DetailsHistoryWriterPageState extends State<DetailsHistoryWriterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () =>
                    Navigator.popAndPushNamed(context, '/dashboard_writer'),
                child: Icon(
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
                  Text(
                    'Nature Kingdom',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Sami Sabino',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Lida por 90 pessoas',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Text(
                    'If the user presses OK then value will be true. If the user backs out of the route, for example by pressing the Scaffolds back button, the value will be null.',
                  ),
                  Text(
                    'When a route is used to return a value, the routes type parameter must match the type of pops result. Thats why used MaterialPageRoute<bool> instead of MaterialPageRoute<void> or just MaterialPageRoute. If you prefer to not specify the types, though, thats fine too.',
                  ),
                  Text(
                    'If the user presses OK then value will be true. If the user backs out of the route, for example by pressing the Scaffolds back button, the value will be null.',
                  ),
                  Text(
                    'If the user presses OK then value will be true. If the user backs out of the route, for example by pressing the Scaffolds back button, the value will be null.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.popAndPushNamed(context, '/update_history_page'),
        },
        tooltip: 'Increment',
        child: const Icon(Icons.update_sharp),
      ),
    );
  }
}
