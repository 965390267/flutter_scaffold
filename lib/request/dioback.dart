// import 'package:dio/dio.dart';

// class BaseUrl{
//   // 配置默认请求地址
//   static const String url = 'http://www.zangzhihong.com:3002';
// }

// class HttpUtil{
//   static Future get(
//     String url,
//     {
//       Map<String, dynamic> data,
//       Map<String, dynamic> headers,
//     }
//   ) async {

//     // 数据拼接
//     if(data != null && data.isNotEmpty){
//       StringBuffer options= new StringBuffer('?');
//       data.forEach((key, value){
//         options.write('${key}=${value}&');
//       });
//       String optionsStr = options.toString();
//       optionsStr = optionsStr.substring(0, optionsStr.length - 1);
//       url += optionsStr;
//     }

//     // 发送get请求
//   return  await _sendRequest(
//         url,
//         'get',
//         headers: headers,
//     );
//   }

//   static void post(
//     String url,
//     {
//       Map<String, dynamic> data,
//       Map<String, dynamic> headers,
//     }
//   ) async {

//     // 发送post请求
//    return  await _sendRequest(
//       url,
//       'post',
//       data: data,
//       headers: headers,
//     );
//   }

//   // 请求处理
//   static Future _sendRequest(
//     String url,
//     String method,
//     {
//       Map<String, dynamic> data,
//       Map<String, dynamic> headers,
//     }
//   ) async {
//     // 检测请求地址是否是完整地址
//     if(!url.startsWith('http')){
//       url = BaseUrl.url + url;
//     }

//     try{
//       Map<String, dynamic> dataMap = data == null ? new Map() : data;
//       Map<String, dynamic> headersMap = headers == null ? new Map() : headers;

//       // 配置dio请求信息
//       Response response;
//       Dio dio = new Dio();
//       dio.options.connectTimeout = 10000;        // 服务器链接超时，毫秒
//       dio.options.receiveTimeout = 3000;         // 响应流上前后两次接受到数据的间隔，毫秒
//       dio.options.headers.addAll(headersMap);    // 添加headers,如需设置统一的headers信息也可在此添加

//       if(method == 'get'){
//         response = await dio.get(url);
//         print(response);
//       }else{
//         response = await dio.post(url,data: dataMap);
//       }
    
//   try {
//        return response;
//   } catch (e) {
//     print(e);
//   }
//     }catch(exception){
//       return '数据请求错误：'+exception.toString();
     
//     }

//   }

// }