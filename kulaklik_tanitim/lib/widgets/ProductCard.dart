import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget{

  final String imgUrl;
  final String name;
  final int color;

  ProductCard({this.color,this.imgUrl,this.name});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Container(
        width: 165,
        height: 240,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 5,right: 5,bottom: 20),
                child: Container(
                  width: 140,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        offset: Offset(0,10),
                        blurRadius: 12
                      ),
                    ]
                  ),
                ),
              ),
            ),
            Positioned(
              right: -10,
              top: -3,
              child: Image.asset(
                imgUrl,
                width: 170,
                height: 150,
              ),

            ),

            Positioned(
              left: 30,
              bottom: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name,style: TextStyle(fontFamily: "Times New Roman",
                      fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  Text("colors $color",style: TextStyle(fontSize: 16,
                      fontFamily:"Times New Roman" ),)
                ],
              ),

            )
          ],
        ),
      ),
    );
  }

}