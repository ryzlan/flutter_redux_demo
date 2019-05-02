import 'package:flutter/material.dart';
import '../containers/counter/counter.dart';
import '../containers/counter/increase_counter.dart';


class HomePage extends StatelessWidget{
  final String title;

  HomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Clicked Counter '
              ),

              Counter(),

              Text(' many Times')


            ],
          ),
        ),
      ),
      floatingActionButton: IncreaseCountButton(),
    );
  }
}