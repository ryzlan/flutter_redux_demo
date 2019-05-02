import 'package:redux_demo/models/app_state.dart';
import './counter_reducer.dart';

AppState appReducer(AppState state , action){
  return new AppState(
    isLoading: false ,
    count: counterReducer(state.count , action)
  );
}