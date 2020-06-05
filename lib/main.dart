import 'package:bloc_1/CounterBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            body: BlocProvider(
          builder: (BuildContext context) => CounterBloc(),
          child: MyHomePage(),
        )
        )
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            FloatingActionButton(
              onPressed: (){
                _counterBloc.add(CounterEvents.decrement);
              },
              tooltip: 'Increment',
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 20),
            BlocBuilder<CounterBloc,int>(
              builder: (BuildContext context, int state){
                return Text('$state', style: TextStyle(fontSize: 20),);
              },
            ),
            SizedBox(width: 20),
            FloatingActionButton(
              onPressed: (){
                _counterBloc.add(CounterEvents.encrement);
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
