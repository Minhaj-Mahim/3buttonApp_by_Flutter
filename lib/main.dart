import 'package:flutter/material.dart';

void main(){
  runApp(ButtonApp());
}
class ButtonApp extends StatelessWidget{
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}
class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button App"),
          centerTitle: true,
          backgroundColor: Colors.green,
          toolbarHeight: 70,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){MySnackBar("Text Button", context);}, child: Text("Text"),),
              ElevatedButton(onPressed: (){MySnackBar("Elevated Button", context);}, child: Text("Elevated"),),
              OutlinedButton(onPressed: (){MySnackBar("Outlined Button", context);}, child: Text("Oulined"),),
            ],
          ),
        )
    );
  }

}
