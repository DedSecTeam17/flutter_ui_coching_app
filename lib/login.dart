import 'package:coaching_app/sign_up.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          theme: ThemeData(primaryColor: Colors.green,
              accentColor: Colors.greenAccent,
              hintColor: Colors.greenAccent,
              highlightColor: Colors.greenAccent),
          debugShowCheckedModeBanner: false,
          title: 'LOGIN APP',
          home: Login(),
          routes: <String, WidgetBuilder>{
            '/signup': (BuildContext mCtx) => new Register(),
//            '/login': (BuildContext mCtx) => new Login()
          },
        )
    );


class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }

}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(

          children: <Widget>[

            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                  child: Text('Hello', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 80.0),),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('There', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 80.0),),
                        Container(
                          margin: EdgeInsets.only(top: 40.0),
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.greenAccent
                          ),
                        )
                      ],
                    )
                )

              ],
            ),
            SizedBox(height: 15.0,),
            Column(
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: TextField(


                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),

                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),

                Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                    alignment: Alignment.centerRight,
                    child: FlatButton(onPressed: () {},
                      child: Text('Forget Password', style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent),),)
                ),
                Container(
                  height: 56.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
//                    border: Border.all(color: Colors.greenAccent,width: 1.0)
                  ),
                  child: FlatButton(
                    color: Colors.greenAccent,
                    onPressed: () {},
                    child: Text(
                      'LOGIN', style: TextStyle(color: Colors.white),),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),

                Container(
                  height: 56.0,
                  width: 300.0,
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.black, width: 1.5)
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Icon(Icons.message, color: Colors.black,),
                        Text('Login With FaceBook',
                          style: TextStyle(color: Colors.black),)
                      ],),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('New to spotify ? '),
                      FlatButton(onPressed: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                          child: Text('Register',
                            style: TextStyle(color: Colors.greenAccent),))
                    ],
                  ),
                )

              ],
            )


          ],
        )

    );
  }

}