import 'package:second/request/dio/http.dart';
import 'dart:convert' as convert;
getHeroList ()async{
       // 发起请求

       var res;
 res= await  Http.get(
      '/hero',
    );
    return convert.jsonDecode(res);
}

getHeroDetail (id)async{
       // 发起请求
return await  Http.get(
      '/hero/$id',
    );
}