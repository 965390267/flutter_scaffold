import 'package:flutter/material.dart';
import 'package:second/utils/toast.dart';
class HomeView extends StatefulWidget{
    HomeView({Key key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>with SingleTickerProviderStateMixin{
  PageController _pageController;
 int _selectedIndex = 0;
  DateTime _lastPressedAt;
  @override
  void initState() {  
    super.initState();
    _pageController=new PageController(initialPage: 0);
  }  
 void tapIndex(int index){
   print(index);
setState((){
 _pageController.jumpToPage(index);
  });
 }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
      appBar: AppBar(
        title:Text('主页')
      ),
      body:PageView(
        controller: _pageController,
         children: <Widget>[
            Text( '坦克',style: TextStyle(color:Colors.amber)),
            Tab(text: '法师'),
            Tab(text: '刺客'),
             Tab(text: '射手'),
         ],
         onPageChanged: (int index){
           setState(() {
            _selectedIndex=index; 
           });
         },
      ),
      bottomNavigationBar:  BottomNavigationBar( // 底部导航
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('消息')),
          BottomNavigationBarItem(icon: Icon(Icons.contact_phone), title: Text('联系人')),
          BottomNavigationBarItem(icon: Icon(Icons.looks), title: Text('看点')),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), title: Text('动态')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: tapIndex,
      ),
    ),
    onWillPop:() async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
           FToast('再次点击退出');

            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        }
        );
  }
}
