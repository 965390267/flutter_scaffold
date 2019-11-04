    
import 'package:flutter/material.dart';
import 'package:second/view/home.dart';
import 'package:second/view/heroDetail.dart';
import 'package:second/view/imagePreview.dart';
import 'package:second/animate/animate.dart';
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => HomeView());
    case 'heroDetail':
     var arguments = settings.arguments;
     print(settings);
      // return MaterialPageRoute(
      //     builder: (context) => HeroDetail(name:arguments));
          return AnimationRoute( HeroDetail(name:arguments));
    case 'imagePreview':
      var arguments = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => ImagePreview(image: arguments));
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}