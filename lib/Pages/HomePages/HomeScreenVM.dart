import 'package:userinput/Helpers/Helpers/AppNavigations/NavigationMixin.dart';
import 'package:userinput/Pages/HomePages/HomeScreenModel.dart';

// Create the class as HomeScreeVM and extends the HomeScreenModel
class HomeScreenVM extends HomeScreenModel{
 
 /* Create the method as onPress and parameter to be required in type String */
  void onPress({required String username}){

    // Add the parameter to the List 
    collectionOfnames.add(username);

    // Call the setmethod of the required parameter
    setname(myname: collectionOfnames);

  }

/* Create the method as goToPerviouspage to navigate back to HomeScreen*/
  void goToPerviouspage(){

    // NaviagationStream Use the property of navigatorPop 
    navigationStream.add(NavigatorPop());
  }
}