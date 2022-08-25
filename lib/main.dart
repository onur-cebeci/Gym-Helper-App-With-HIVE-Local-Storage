import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gym_helper_githup/models/storage.dart';
import 'package:gym_helper_githup/view/home_pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> setupHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(StorageAdapter());
  var sizeBox = await Hive.openBox<Storage>('sizes');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupHive();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('tr', 'TR')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Gym Helper ',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.deviceLocale,
        home: const MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}
