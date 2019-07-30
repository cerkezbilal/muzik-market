import 'package:flutter/material.dart';
import 'model/model.dart';
import 'widgets/ProductCard.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  // This widget is the root of your application.

}

class _MyAppState extends State<MyApp>{

  int _currentIndex;
  @override
  void initState() {

    super.initState();
    _currentIndex=0;

  }

  void changePage(int index){

    setState(() {
      _currentIndex = index;

    });
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFf3f6fb),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16,right: 16,top: 30,bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu,size: 40,),
                    onPressed: (){

                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart,size: 40,),
                    onPressed: (){

                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Market",style: TextStyle(fontSize: 32,fontWeight:
              FontWeight.bold,fontFamily:"Times New Roman"),),
            ),

            SizedBox(
              height: 22,

            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.12),
                    offset: Offset(0,10),
                    blurRadius: 30
                  ),
                ]
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 18,right: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search...",
                      hintStyle: TextStyle(fontSize: 18,fontFamily: "Times New Roman"),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              )
            ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text("Kulaklıklar",style: TextStyle(fontWeight:
            FontWeight.bold,fontSize: 26,fontFamily:"Times New Roman" ),),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 240,
            child: ListView.builder(
            itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              var product = products[index];
              return ProductCard(
                imgUrl: product.image,
                name: product.title,
                color : product.color
              );
              },
            ),
          ),
            Container(
              width: double.infinity,
              height: 160,
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text("Hoparlörler", style: TextStyle(fontSize: 26,
                        fontWeight: FontWeight.bold,fontFamily:"Times New Roman"
                    ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0,6),
                              blurRadius: 6,

                            ),
                          ]
                        ),

                        child: Padding(
                          padding: EdgeInsets.only(left: 22,top: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Ralis",style: TextStyle(fontWeight:
                              FontWeight.bold,fontSize: 20,fontFamily: "Times "
                                  "New Roman"),),
                              SizedBox(
                                height: 4,
                              ),
                              Text("Haute Red, Slate Blue \nMist Grey",style:
                              TextStyle(color: Colors.grey),),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    right: 20,
                    top: -5,
                    child: Image.asset("assets/images/hop.png",fit: BoxFit
                        .cover,width: 150,height: 160,),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    bottomNavigationBar: Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: BubbleBottomBar(
        backgroundColor: Colors.transparent,
        opacity: 1,
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: changePage,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.home,color: Colors.white,),
            title: Text("Home",style: TextStyle(color: Colors.white,fontSize:
            20,fontFamily: "Times "
                "New Roman"),),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.favorite,color: Colors.white,),
            title: Text("Favoriler",style: TextStyle(color: Colors.white,
                fontFamily:"Times "
                "New Roman",fontSize: 20 ),),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.person,color: Colors.white,),
            title: Text("Profil", style: TextStyle(color: Colors.white,
                fontSize: 20, fontFamily: "Times "
                    "New Roman"),),
          ),
        ]
      ),
    ),

    );
  }

}


