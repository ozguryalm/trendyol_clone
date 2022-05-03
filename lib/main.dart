// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';
import 'package:trendyol_clone/core/providers/provider_home_page/provider_women_page.dart';
import 'package:trendyol_clone/core/providers/provider_main_page/provider_main_page.dart';
import 'package:trendyol_clone/core/routes/app_routes.dart';
import 'core/providers/provider_home_page/provider_home_page.dart';
import 'product/utils/themes/dark_theme.dart';
import 'product/utils/themes/light_theme.dart';
import 'package:sizer/sizer.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => WomenProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
// ignore: prefer_mixin

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
        child: Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        routes: routes,
        initialRoute: MAIN,
        themeMode: ThemeMode.dark,
        darkTheme: myDarkTheme,
        theme: myLightTheme,
      );
    }));
  }
}
