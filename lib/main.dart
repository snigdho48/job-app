import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:job_app/Pages/Home_page.dart';
import 'package:job_app/Pages/details_page.dart';

import 'Pages/Launcher_page.dart';
import 'Utils/ThemeUtils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeUtils.light,
      darkTheme: ThemeUtils.dark,
      themeMode: ThemeServices().theme,
      initialRoute: LauncherPage.routeName,
      routes: {
        LauncherPage.routeName: (_) => const LauncherPage(),
        HomePage.routeName: (_) => const HomePage(),
        DetailPage.routeName: (_) => const DetailPage(),

      },
    );
  }
}

