import 'package:flutter/material.dart';

// Stack and card

Widget _card(BuildContext context){
 return  Container(
    width: 200,
    height: 200,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album, size: 45),
            title: Text('Sonu Nigam'),
            subtitle: Text('Best of Sonu Nigam Song'),
          ),
        ],
      ),
    ),
  );

}


class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter Stack Widget Example"),
            ),
            body: ListView(
              children: [
                Stack(

                    fit: StackFit.passthrough,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      // Max Size Widget
                      Container(
                        width: 400,
                        height: 200,
                        child: Card(
                          color: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.person, size: 25),

                                // title: Text('Sonu Nigam'),
                                // subtitle: Text('Best of Sonu Nigam Song'),
                              ),
                            ],
                          ),
                        ),
                      ),
//....
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 150.0,
                            ),
                            //Card
                            _card(context),
                            _card(context),
                            _card(context),
                          ],
                        ),
                      ),

                    ],
                  ),
              ],
            ))
    );

  }
  }

