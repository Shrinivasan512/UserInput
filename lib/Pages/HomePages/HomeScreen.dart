import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:userinput/Helpers/Helpers/AppNavigations/NavigationHelpers.dart';
import 'package:userinput/Helpers/Helpers/AppNavigations/NavigationMixin.dart';
import 'package:userinput/Helpers/Helpers/Utitilites/Utilities.dart';
import 'package:userinput/Pages/HomePages/HomeScreenVM.dart';

// Create the class as HomeScreen with the statefulwidget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

// Create the CreateState for HomeScreen
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// State of the HomeScreen extends the State of the homeScreen type
class _HomeScreenState extends State<HomeScreen> {

  // Create the Instance to the HomeScreen
  final HomeScreenVM _homeScreen = HomeScreenVM();

  // TextEditingController is been created used to retrive the value
  final TextEditingController _textEditingController = TextEditingController();

/* Create the initState method to initilaize the HomeScreen */
  @override
  void initState() {

    // Super keyword denotes the immediate method as initState
    super.initState();

    // Instance of the homeScreen uses the listen the  passed from the navigatorPop
    _homeScreen.navigationStream.stream.listen((event) {

      // Condition checks the type of the event and NavigatorPop
      if (event is NavigatorPop) {
        context.pop(data: event.data);
      }
    });
  }

/* Create the dispose method to dispose the HomeScreen */
  @override
  void dispose() {

    // dispose the controller when the widget is disposed.
    _textEditingController.dispose();
    super.dispose();
  }

/* Method to show Popup on the screen */
  void showUserPopUp({required int index}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {

          // Return the child widget as AlertDialog
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 74, 91, 121),

            // Title is conside to top display the Data
            title: const Text("Your Name"),

            // Instance is used to access the list of the index
            content: Text(_homeScreen.collectionOfnames[index]),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    
                    // OnClick of the method is called by the instance
                    _homeScreen.goToPerviouspage();
                  },

                  // Label to the elevated Button
                  child: const Text("Close"))
            ],
          );
        });
  }

/* Method of the widget Context of the widgets */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The UserInput"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            
            // Get the controller of the TextEditing Instance
            TextFormField(
             
              // Attach the _textEditingController to controller prop of textfromField
              controller: _textEditingController,

              decoration: const InputDecoration(hintText: "Name"),
            ),
            ElevatedButton(
                onPressed: () {
                  
                  // Retrive the text that the user have entered using the texteditingController
                  _homeScreen.onPress(username: _textEditingController.text);
                },
                child: const Text("Add Name")),
            Observer(builder: (context) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _homeScreen.collectionOfnames.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(

                      // Consume the input from the list by the instance
                      _homeScreen.collectionOfnames[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                    trailing: IconButton(
                        onPressed: () {

                          // On Press event triggers the method and invoke the required parameter as index
                          showUserPopUp(index: index);
                        },
                        icon: const Icon(Icons.edit_outlined)),
                  );
                },
              );
            })
          ]),
        ),
      ),
    );
  }
}
