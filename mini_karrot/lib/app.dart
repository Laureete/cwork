import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mini_karrot/features/authentication/screens/onboarding.dart';
import 'package:mini_karrot/utils/theme/theme.dart';
import 'package:mini_karrot/utils/constants/text_strings.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
   return GetMaterialApp(
     title: TTexts.appName,
     themeMode: ThemeMode.system,
     theme: TAppTheme.lightTheme,
     darkTheme: TAppTheme.darkTheme,
       debugShowCheckedModeBanner: false,
       // initialBinding: GeneralBindings(),
       home: const OnBoardingScreen(),
   );
  }
}