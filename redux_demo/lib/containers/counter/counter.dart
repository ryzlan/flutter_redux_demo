import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_demo/models/app_state.dart';
import 'package:redux/redux.dart';


class Counter extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   
    return new StoreConnector<AppState , _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context , _ViewModel vm){
        return Text(
          vm.count.toString(),
          style: Theme.of(context).textTheme.display1,
        );
      },
    );
  }
}


class _ViewModel{
  final int count;
  _ViewModel({
    @required this.count
  });
  static _ViewModel fromStore(Store<AppState> store){
    return new _ViewModel(count: store.state.count);
  }
}

// (store) => store.state.toString(),