import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_demo/actions/counter_Actions.dart';
import 'package:redux_demo/models/app_state.dart';
import 'package:redux/redux.dart';

//just the increment part

class IncreaseCountButton extends StatelessWidget{
  IncreaseCountButton({Key key}) : super(key: key);

  
  Widget build(BuildContext context) {
    return new StoreConnector<AppState , VoidCallback>(
      converter: (Store<AppState> store){
        return(){
          store.dispatch(new IncrementCountAction());
        };
      },
      builder: (BuildContext context, VoidCallback increase){
        return new FloatingActionButton(
          onPressed: increase,
          child: new Icon(Icons.add),
        );
      },
    );
  }
}