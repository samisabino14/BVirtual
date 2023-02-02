import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pdm_project/pages/authentication/login_screen.dart';
import 'package:pdm_project/pages/authentication/register_screen.dart';
import 'package:pdm_project/pages/readerScreens/dashboard_reader_screen.dart';
import 'package:pdm_project/pages/readerScreens/details_history_screen.dart';
import 'package:pdm_project/pages/readerScreens/search_reader_screen.dart';
import 'package:pdm_project/pages/splashScreen/splash_screen.dart';
import 'package:pdm_project/pages/writerScreens/dashboard_writer_screen.dart';
import 'package:pdm_project/pages/writerScreens/details_history_writer_screen.dart';
import 'package:pdm_project/pages/writerScreens/register_history_screen.dart';
import 'package:pdm_project/pages/writerScreens/update_history_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B Virtual',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        elevatedButtonTheme: null,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/register': (_) => RegisterPage(),
        '/dashboard_reader': (_) => const DashboardReaderPage(),
        '/details_history': (_) => const DetailHistoryPage(),
        '/dashboard_writer': (_) => const DashboardWriterPage(),
        '/details_history_writer': (_) => const DetailsHistoryWriterPage(),
        '/register_history_page': (_) => const RegisterHistoryPage(),
        '/search_reader': (_) => const SearchReaderPage(),
        '/update_history_page': (_) => const UpdateHistoryPage(),
      },
    );
  }
}
