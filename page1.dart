import 'package:flutter/material.dart';
//this is a statless widget
class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class page_1 extends StatefulWidget {
  const page_1({Key? key}) : super(key: key);

  @override
  State<page_1> createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          margin: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  //first for location
                  Container(
                    child: Column(
                      children: [
                        //location text
                        Container(
                          padding:EdgeInsets.all(15.0),
                          child: Text(
                            'Current location',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        //actual location
                        Container(

                          child: Text(
                            'Lahore, PAK',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  //second for user
                  Container(
                    margin: EdgeInsets.only(left:200.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(50))

                   ),
                  ),
                ],
              ),
              //Textfield search
              Container(
                padding:EdgeInsets.all(15.0),
                margin:EdgeInsets.only(top: 30.0),
                child: TextField(
                      decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Search for event',
                        prefixIcon: Icon(
                          Icons.event,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                    ),

                ),
              ),
              //Card orange event
              Container (
                width: 350.0,
                height: 350.0,
                // padding: EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int  )
                  {
                    return Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.orange,
                        elevation: 3.0,
                        child: Column(
                          children: [
                            Column(
                              //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  //alignment:Alignment.topLeft,
                                  margin: EdgeInsets.only(right:150.0),
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    '08 JUNE',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  //alignment:Alignment.topLeft,
                                  margin: EdgeInsets.only(right:130.0),
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'PAKISTAN',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(),
                              ],
                            ),
                            Container(
                              width:320,
                              height:80,
                              padding: EdgeInsets.all(25.0),
                              margin: EdgeInsets.only(top: 144.0),
                              decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                ),
                              ),
                              child: Text(
                                '43 JOINED',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );

                  },

                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}

