// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:padding_column_row_widget/padding_column_row_widget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    const Text("Only with Standard Column Widget"),
                    const Text("Hello this is text"),
                    Expanded(child: Image.network("https://miro.medium.com/max/1059/1*S_0zKU4NjU51GtuDOcWwVQ.png")),
                    const Text("I am text widget and I need padding "),
                    const Text("Me too")
                  ],
                ),
              ),
              const SizedBox(height: 50,),

              Container(
                height: 400,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16)
                ),
                child:RowWithPadding(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  children:[
                    const Text("Only with contentPadding Column Widget"),
                    const Text("Hello this is text"),
                    Expanded(child: Image.network("https://miro.medium.com/max/1059/1*S_0zKU4NjU51GtuDOcWwVQ.png")),
                    const Text("I am text widget and I need padding "),
                    const Text("Me too")
                  ],
                ).build(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
