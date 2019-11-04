
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lol/provider/theme.dart';
import 'package:lol/router/router.dart' as router;
import 'package:provider/provider.dart';
void main(){ 
  runApp(MyApp());
if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState()=>_MyAppState(); 
}
class _MyAppState extends State<MyApp>{
    @override
  Widget build(BuildContext context){
    final initThemeData=  ThemeData( //初始主题
      primaryColor: Colors.orange,
    );
 
     final initIndex=4;//初始索引
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(builder: (_)=>ThemeState(initIndex, initThemeData))
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
            brightness: Brightness.light,
    primaryColor: Colors.grey[100],
    accentColor: Colors.blueAccent,
    backgroundColor: Colors.grey[100],
    scaffoldBackgroundColor: Colors.grey[100],
    textTheme: TextTheme(
      headline: TextStyle(),
      title: TextStyle(),
      body1: TextStyle(),
    ),
      ),
      title: 'lol',
      onGenerateRoute: router.generateRoute,
      initialRoute: '/',
    ),
    );
  }
}

