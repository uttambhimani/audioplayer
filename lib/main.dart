
import 'package:audioplayer/home_cantroller.dart';
import 'package:audioplayer/home_screen.dart';
import 'package:audioplayer/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (context)=>Home_provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Home_Screen(),
          'sd':(context)=>Second_Screen(),
        },
      ),
    )
  );
}