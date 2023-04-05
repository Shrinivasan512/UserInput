import 'package:flutter/material.dart';
import 'Helpers/Helpers/AppNavigations/NavigationConfig.dart';
import 'Helpers/Helpers/AppNavigations/NavigationHelpers.dart';

// Create the class as App with the Statelesswidget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Return the Material app 
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,

      // Set the ongenarate and send the function signature of AppRoute and set the initila page as homeScreen and set the data to be null
      onGenerateRoute:
          AppRoute(initialPage: Pages.homeScreenConfig, initialPageData: null)
              .onGenerateRoute,
    );
  }
}
