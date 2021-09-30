import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


class ColumnDemo extends StatefulWidget {
  @override
  State<ColumnDemo> createState() => _ColumnDemoState();
}

class _ColumnDemoState extends State<ColumnDemo> {
  int _currentIndex= 0;


  Widget _buildImageSlider(){
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [

          AssetImage("images/1.jpg"),
          AssetImage("images/2.jpg"),
          AssetImage("images/3.jpg"),
          AssetImage("images/4.jpg"),
          AssetImage("images/1.jpg"),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Clothify',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,

        ),

        ),
elevation: 0.0,
        centerTitle: true,

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Search'),
              backgroundColor: Colors.blue
          ), BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Cat'),
              backgroundColor: Colors.blue
          )


        ],
        onTap: (index){

          setState(() {
            _currentIndex = index;

          });
        },
      ),
      backgroundColor:  Colors.white,
      body:  SafeArea(
          child: Container(
            child: ListView(
               children: [
                 Container(
                   width: double.infinity,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     _buildImageSlider(),

                   ],
                   ),
                 )


               ],
            ),
          ),
      ),
    );
  }
}



