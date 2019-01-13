import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Coaching App',
          home: HomePage(),
        )

    );


class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  List<Widget> users=new List();



  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    for(int i=0 ; i<100; i ++){
//       String current_status= i%2==0 ? "Active " : "Away";
      users.add(_buidCard("mohammed", i%2==0 ? "Active " : "Away", i));
    }

    return Scaffold(
        appBar: AppBar(
          title: new FlutterLogo(
            colors: Colors.green, size: 25.0,
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () {},
            color: Colors.grey,),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu), onPressed: () {}, color: Colors.grey,)
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(child:
            new ListView(
              shrinkWrap: true,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      color: Colors.white,
                      child: new Text('Coaching App',
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      alignment: Alignment(0.0, -0.4),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 2.0)
                          ]
                      ),
                      child: Row(
//                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          Expanded(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      25.0, 25.0, 25.0, 5.0),
                                  child: Text('You Having', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 14.0),),
                                )
                                ,
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      25.0, 50.0, 25.0, 10.0),
                                  child: Text('22', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 40.0),),
                                )

                              ],
                            )
                            ,
                          ), Expanded(child:
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius
                                      : BorderRadius.circular(20.0),
                                  color:
                                  Colors.greenAccent.withOpacity(0.5)
                              ),
                              child
                                  : Center(
                                child: Text('Buy More'
                                  , style: TextStyle(color: Colors.white
                                  ),),
                              ),
                            ),
                            onTap:
                                () {}
                            ,
                          ),

                          )


                        ],
                      ),
                    )
                  ],
                ),

                SizedBox(height: 55.0,),

                Container(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Text('MY COACHES', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.7),
                          fontSize: 12.0)),
                      Text('VIEW PASSED SESSIONS', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                          fontSize: 12.0)),
                    ],
                  ),
                ),

                SizedBox(height: 10.0,),

                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  primary: false,
                  mainAxisSpacing: 4.0,
                  shrinkWrap: true,
                  children: users

                )


              ]
              ,
            ),),


          ],
        )
    );
  }

  Widget _buidCard(String name, String status, int index) {
    return Container(
        margin: EdgeInsets.all(5.0),
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10.0,),


//                image
              Stack(
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.greenAccent,
                      image: DecorationImage(image: NetworkImage(
                        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
                      ), fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 45.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                        color: status == 'Away' ? Colors.orangeAccent : Colors
                            .greenAccent,
                      border: Border.all(color: Colors.white,style: BorderStyle.solid,width: 2.0)
                    ),
                  )
                ],
              ),
                Container(
                  child: Text(name, style: TextStyle(fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black26.withOpacity(0.6)),)
                  ,
                ),
                Container(
                  child: Text(status, style: TextStyle(fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withOpacity(0.6),),)
                  ,
                ),
                Expanded(child:

                Container(
                    height: 56.0,
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        color: status == 'Away' ? Colors.grey : Colors
                            .greenAccent
                    ), child: Center(

                    child: Text('Request', style: TextStyle(color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),)
                )


                )
                )
              ],

            )

        )
    );
  }
}


