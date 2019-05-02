import 'package:redux_demo/actions/counter_Actions.dart';

int counterReducer(int currentCount, action){
  if(action is IncrementCountAction){
    currentCount++;
    return currentCount;
  }else if(action is DecrementCountAction){
    currentCount--;
    return currentCount;
  }else{
    return currentCount;
  }
}