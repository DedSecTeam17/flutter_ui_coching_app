import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Coaching App',
          home: Register(),
        )

    );


class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterState();
  }

}

class RegisterState extends State<Register> {
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
                      labelText: 'UserName',
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),
                    ), keyboardType: TextInputType.text,
                  ),
                ),

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
                    keyboardType: TextInputType.emailAddress,
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
                    ), obscureText: true,
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
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
                      'Register', style: TextStyle(color: Colors.white),),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Already have account ? '),
                      FlatButton(onPressed: () {
                        Navigator.of(context).pop();
                      },
                          child: Text('Login..',
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