import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:second/view/main_page.dart';
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

Handler mainPageHandle =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    // String goodsId = params['id'].first;
    //print('index>details goodsID is ${goodsId}');
    return MainPage();

  }
);


Handler homeHanderl =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
   // String goodsId = params['id'].first;
    //print('index>details goodsID is ${goodsId}');
   return HeroDetail(name:'goodsId');

  }
);

Handler detailsHanderl =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    // String goodsId = params['id'].first;
    //print('index>details goodsID is ${goodsId}');
    return HeroDetail(name:'goodsId');

  }
);


