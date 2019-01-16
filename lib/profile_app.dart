import 'package:flutter/material.dart';


void main() =>
    runApp(

        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ProfileApp',
          home: profileApp(),
        )
    );


class profileApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return profileAppState();
  }

}

class profileAppState extends State<profileApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
//      appBar: AppBar(
//        title: Text('Profile',style: TextStyle(color: Colors.black),),
//        elevation: 0.0,
//        backgroundColor: Colors.white,
//        centerTitle: true,
//
//      ),
        body: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Colors.black.withOpacity(0.8),
              ),
              clipper: getClipper(),
            ), Positioned(

                top: MediaQuery
                    .of(context)
                    .size
                    .height / 5,
                child: Container(
                  width: 150.0,
                  height: 150.0,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(75.0)),
                    image: DecorationImage(image: NetworkImage(
                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
                    ), fit: BoxFit.cover
                    ),
                  ),
                  margin: EdgeInsets.only(left: 100.0, right: 200.0),
                ))
            , Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 50.0),
              child: Text('Eng.Mohemmed Elamin', style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),),
            ), Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(20.0)
                      ), width: 20.0,
                      height: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Avalabile for freelanceing', style: TextStyle(
                        color: Colors.greenAccent.withOpacity(0.7)),),
                  )
                ],
              ),
            ), Container(
                margin: EdgeInsets.only(top: 450.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[

                        Expanded(child: Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.8),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Padding(padding: EdgeInsets.all(5.0),
                              child: Text('JavaScript'),)
                        ),),

                        Expanded(child: Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.8),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text('Dart'),)
                        ),),

                        Expanded(child: Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.8),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text('WepApps'),)
                        ),),


                      ],
                    ),
                    Row(
                      children: <Widget>[

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0), child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(5.0),
                                child: Text('1232', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),),),
                              Padding(padding: EdgeInsets.all(5.0),
                                child: Text('FLLOWERS', style: TextStyle(
                                    color: Colors.grey.withOpacity(0.7)),),)
                            ],
                          ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0), child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(5.0),
                                child: Text('1232', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),),),
                              Padding(padding: EdgeInsets.all(5.0),
                                child: Text('FLLOWERS', style: TextStyle(
                                    color: Colors.grey.withOpacity(0.7)),),)
                            ],
                          ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0), child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(5.0),
                                child: Text('1232', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),),),
                              Padding(padding: EdgeInsets.all(5.0),
                                child: Text('FLLOWERS', style: TextStyle(
                                    color: Colors.grey.withOpacity(0.7)),),)
                            ],
                          ),
                          ),
                        ),


                      ],
                    ),
                    Center(
                        child: Container(
                          height: 40.0,
                          child: FlatButton(
                            onPressed: () => {},
                            child: Text(
                              'HIRE', style: TextStyle(color: Colors.white),)
                            , color: Colors.greenAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),

                          ),
                        )
                    )
                  ],
                )
            ),


          ],
        )
    );
  }

}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0.0, size.height / 1.7);
    path.lineTo(size.width + size.height / 2, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}