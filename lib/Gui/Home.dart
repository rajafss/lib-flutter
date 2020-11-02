import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}
class HomeState extends State<Home>{
  final TextEditingController _userControler = new TextEditingController();
  final TextEditingController _passwordControler = new TextEditingController();
 String myInfo = '';
  void _onLogin(){
    setState(() {
      if(_userControler.text.trim().isEmpty && _passwordControler.text.trim().isEmpty){
        myInfo = 'please enter your name and your password';
      }else{

        myInfo = 'welcome ${_userControler.text}   ${_passwordControler.text}  ';
      }
    });

    print('login');
  }
  void _onclear(){
    setState(() {
      _userControler.clear();
      _passwordControler.clear();
    });
    print(' log up');
  }
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      backgroundColor: Colors.blue,
      title: new Text('raja saad'),

    ),
    body: new Container(
           padding: EdgeInsets.all(33.0),
      alignment: Alignment.center,
      child: new ListView(
        
        children: <Widget>[
          new Image.asset('img/login.jpg',


        ),
               new Padding(padding: EdgeInsets.all(23.0)),
              new TextField(
                style: new TextStyle(fontSize: 12.0, color: Colors.blue),
                controller: _userControler,
                decoration: InputDecoration(
                  icon: new Icon(Icons.person ,color: Colors.blue,size: 33.0,),
                  hintText: 'your name'
                ),

              ),
              new Padding(padding: EdgeInsets.all(13.0)),
              new TextField(
                style: new TextStyle(fontSize: 12.0, color: Colors.blue),
                controller: _passwordControler,
                obscureText: true,
                decoration: InputDecoration(
                    icon: new Icon(Icons.lock,color: Colors.blue,size: 33.0,),
                    hintText: 'your password'
                ),

              ),
          new Padding(padding: EdgeInsets.all(32.0)),
          new Center(
            child: new Row(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 73.0),
                  child: new FlatButton(
                    onPressed: _onLogin,
                    child: new Text('login'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 33.0),
                  child:   new FlatButton(
                    onPressed: _onclear,
                    child: new Text('Clear'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ),


              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.all(33.0),
            child:  new Text('$myInfo',
              style: TextStyle(color: Colors.blue),
            ),
          ),
         


        ],
      ),
    ),

  );
  }

}

