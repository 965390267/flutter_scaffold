import 'package:flutter/material.dart';
import 'package:second/application.dart';
class SplashPage extends StatefulWidget {
  @override
  _SplashPagState createState() => _SplashPagState();
}
 
class _SplashPagState extends State<SplashPage> {
 
  @override
  void initState() {
   Future.delayed(Duration(seconds: 5),(){
     Application.router.navigateTo(context,'/mainPage',replace: true);
   });
	/// 2秒后跳转到主页面，上面注释的代码也可以做到倒计时
    // Observable.timer(0, Duration(seconds: 2)).listen((_){
    //   /// 然后看 NavigatorUtil.dart
    //   NavigatorUtil.goHomePage(context);
    // });
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('我是欢迎页面'),
        ),
      ),
    );
  }

}
