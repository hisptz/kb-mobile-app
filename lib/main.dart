import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kb_mobile_app/app-state/intervention_bottom_navigation_state/intervention_bottom_navigation_state.dart';
import 'package:kb_mobile_app/app-state/intervention_card_state/intervention_card_state.dart';
import 'package:kb_mobile_app/app-state/login_form_state/login_form_state.dart';
import 'package:kb_mobile_app/core/constants/custom_color.dart';
import 'package:kb_mobile_app/modules/splash/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => IntervetionCardState()),
          ChangeNotifierProvider(create: (_) => LoginFormState()),
          ChangeNotifierProvider(
              create: (_) => InterventionBottomNavigationState())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              textTheme: GoogleFonts.robotoTextTheme(
                Theme.of(context).textTheme,
              ),
              primaryColor: CustomColor.defaultPrimaryColor,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          home: SafeArea(child: SplashPage()),
        ));
  }
}
