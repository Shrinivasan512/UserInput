// ignore_for_file: constant_identifier_names, file_names, non_constant_identifier_names


import '/Pages/HomePages/HomeScreen.dart';
import 'NavigationHelpers.dart';

// Declare the Routes as Enum
enum Routes {
  HomeScreen,
}

// Create class named Pages which holds the pages in the application 
class Pages{ 
   
  // Screen Config
  static final PageConfig homeScreenConfig = PageConfig(route: Routes.HomeScreen , build: (_) => HomeScreen());
}