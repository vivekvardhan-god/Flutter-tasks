import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    final list =['Title: Login Page','Description: This is the list view builder','Date: 17-07-2023'];
    return Scaffold(
      appBar: AppBar(),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder:(context,index){
             return Card(
               child: Text(list[index])
             ) ;
            } ),

    
    );

  }
}
