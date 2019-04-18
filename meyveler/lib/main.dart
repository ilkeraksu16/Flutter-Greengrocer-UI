import 'package:flutter/material.dart';
import 'package:meyveler/meyveler.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =TabController(vsync: this,length: 3); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 15.0,right: 15.0,bottom: 15.0,left: 15.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/picsix.jpeg'),
                      fit: BoxFit.cover, 
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                  iconSize: 27.0,
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.red.withOpacity(0.5),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Meyveler',
                    style: TextStyle(
                      fontSize: 33.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Ekmek',
                    style: TextStyle(
                      fontSize: 33.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'İçecek',
                    style: TextStyle(
                      fontSize: 33.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Meyveler(),
                Meyveler(),
                Meyveler(),
                
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Filtre',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0,
                    )
                  )
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.black,
                size: 25.0,
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 25.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.red
                ),
                height: 45.0,
                width: 65.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '12',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color:Colors.white,
                      size: 15.0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

