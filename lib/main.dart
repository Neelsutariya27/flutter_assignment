import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/src/core/configs/app_colors.dart';
import 'package:flutter_assignment/src/features/dashboard/dashboard_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: AppColors.primarySwatchColor,
          scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
          appBarTheme: const AppBarTheme(backgroundColor: AppColors.transparentColor)),
      home: const DashboardScreen(),
    );
  }
}
