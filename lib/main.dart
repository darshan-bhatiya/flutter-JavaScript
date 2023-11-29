import 'dart:js_util';
import 'package:flutter/material.dart';
import 'local_forage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter with LocalForage'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              // Example: Set and Get item using LocalForage
              setItem('name', 'darshan');
              var storedValue = await getItem('name');
              var dartFuture  = promiseToFuture(storedValue);
              dartFuture.then((result) {
                print('Promise resolved with result: $result');
              }).catchError((error) {
                print('Promise rejected with error: $error');
              });
            },
            child: Text('Store and Retrieve Data'),
          ),
        ),
      ),
    );
  }
}
