import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:second/view/home.dart';
import 'package:second/view/heroDetail.dart';
import 'package:second/view/splash/splash_page.dart';
import 'package:second/view/imagePreview.dart';


Handler splashHandle =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
   // String goodsId = params['id'].first;
   // print('index>details goodsID is ${goodsId}');
    return SplashPage();

  }
);

Handler homeHanderl =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
   // String goodsId = params['id'].first;
    //print('index>details goodsID is ${goodsId}');
    return HomeView();

  }
);

Handler detailsHanderl =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    // String goodsId = params['id'].first;
    //print('index>details goodsID is ${goodsId}');
    return HeroDetail(name:'goodsId');

  }
);

