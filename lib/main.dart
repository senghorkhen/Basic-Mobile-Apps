
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(Homework());
class Homework extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
          title: Text("Basic Mobile Apps"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.group, size: 25.0, color: Colors.white),),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.favorite),),
              Tab(icon: Icon(Icons.share),),
              Tab(icon: Icon(Icons.group),),
              Tab(icon: Icon(Icons.search),),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
           children: <Widget>[
             DrawerHeader(
               child: Center(
                 child: CircleAvatar(
                   radius: 60.0,
                   backgroundImage: NetworkImage("http://dodontrey.com/images/pictures/thumbnail/artist/pich%20solika%20image.PNG"),
                 ),
               ),
               decoration: BoxDecoration(color: Colors.green[500]),
             ),
             ListTile(
               title: Text("Home"),
               leading: Icon(Icons.home,),
             ),
              ListTile(
               title: Text("About"),
               leading: Icon(Icons.person,),
             ),
              ListTile(
               title: Text("Contact"),
               leading: Icon(Icons.phone,),
             ),
           ], 
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Image.network("http://dodontrey.com/images/pictures/thumbnail/artist/pich%20solika%20image.PNG",
            fit: BoxFit.cover,
            ),
            Image.network("https://vignette.wikia.nocookie.net/yg-entertainment/images/b/bd/Dara.jpg/revision/latest?cb=20190618024308"),
            Image.network("https://i2.wp.com/img.kpopmap.com/2016/06/dara-whtite.jpg?resize=500%2C683&ssl=1",
            fit: BoxFit.cover,
            ),
            Image.network("https://ohdara.files.wordpress.com/2015/10/20151027225147_i_00_c_1_845.jpg",
            fit: BoxFit.cover,
            ),
          ],
        ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.home, color: Colors.green,size: 30,),),
                  IconButton(icon: Icon(Icons.thumb_up, color: Colors.pink,size: 30,),),
                  IconButton(icon: Icon(Icons.thumb_down, color: Colors.red,size: 30,),),
                  IconButton(icon: Icon(Icons.share, color: Colors.blue,size: 30,),),
                ],
              ),
            ),
          ),
        floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.pink,
        overlayOpacity: 0.3,
        children: [
          SpeedDialChild(
            child: Icon(Icons.message),
            backgroundColor: Colors.orange,
            label: "Message",
            labelBackgroundColor: Colors.orange,
            labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          SpeedDialChild(
            child: Icon(Icons.share),
            backgroundColor: Colors.red,
            label: "Sharing",
            labelBackgroundColor: Colors.red,
            labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          SpeedDialChild(
            child: Icon(Icons.attach_file),
            backgroundColor: Colors.green,
            label: "Attach File",
            labelBackgroundColor: Colors.green,
            labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
           SpeedDialChild(
            child: Icon(Icons.favorite),
            backgroundColor: Colors.blue,
            label: "Love You",
            labelBackgroundColor: Colors.blue,
            labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
           SpeedDialChild(
            child: Icon(Icons.person),
            backgroundColor: Colors.pink,
            label: "Friends",
            labelBackgroundColor: Colors.pink,
            labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ],
        ),
      ),
      ),
    );
  }
}