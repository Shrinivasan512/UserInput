
import 'package:flutter/widgets.dart';

import 'package:mobx/mobx.dart';

import '../../Helpers/Helpers/AppNavigations/NavigationMixin.dart';


// Generate the HomeScreenModel builder
part 'HomeScreenModel.g.dart';

//  Class of the HomeScreenModel with the Mixin of the HomeScreenmodel and the NavigationMixin
class HomeScreenModel = _HomeScreenModelBase
    with _$HomeScreenModel, NavigationMixin;

/* Abstract Class of the HomeScreenModel with the mixin of Store */
abstract class _HomeScreenModelBase with Store {
  
  // Declare the List as empty and the type String
  @observable
  List<String>collectionOfnames=[];

  // Create the set method for the list and required parameter as  myname in List type of string
  @action
  void setname({required List<String> myname}){

    // Use this keyword to get the reference of the List and empty the List
    this.collectionOfnames=[];

    // Assign the parameter to the list 
    this.collectionOfnames=myname;

  }

}


