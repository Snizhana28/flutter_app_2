import 'package:flutter/material.dart';
import 'package:flutter_app_2/bindings.dart';
import 'package:get/get.dart';
import 'package:flutter_app_2/core/theme/theme.dart';
import 'package:flutter_app_2/core/router/router.dart';
import 'package:flutter_app_2/feature/presentation/home/home_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      initialRoute: AppRouter.home,
      initialBinding: AppBindings(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      getPages: [
        GetPage(name: AppRouter.home, page: () => const HomeScreen()),
      ],
    );
  }
}
