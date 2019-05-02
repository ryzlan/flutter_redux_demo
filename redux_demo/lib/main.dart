import 'package:flutter/material.dart';
import './pages/home_page.dart';

import './reducers/app_reducer.dart';
import './models/app_state.dart';
import 'package:redux/redux.dart'; // new
import 'package:flutter_redux/flutter_redux.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final String title = "Flutter Redux Demo";

  final store = new Store<AppState>(
    appReducer, 
    initialState: new AppState(), 
    middleware: [], 
  );

  @override
  Widget build(BuildContext context) {
    String title = "Flutter Redux demo";

    return new StoreProvider(
      store: store,
      child: MaterialApp(
        
        home: new HomePage(
          title: title,
        ), 
      ),
    );
  }
}
