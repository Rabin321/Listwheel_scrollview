import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: ListwheelScrollViewDemo(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

// List wheel scrollview

class ListwheelScrollViewDemo extends StatefulWidget {
  @override
  _ListwheelScrollViewDemoState createState() => _ListwheelScrollViewDemoState();
}

class _ListwheelScrollViewDemoState extends State<ListwheelScrollViewDemo> {
  int _selectitemindex = 0;
  @override
  Widget build(BuildContext context) {
   List<Widget> items = [
     ListTile(
       leading: Icon(Icons.assignment, size: 40.0),
       title: Text("Assignment", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
     ListTile(
       leading: Icon(Icons.bus_alert_outlined,size: 40.0),
       title: Text("Bus route", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
     ListTile(
       leading: Icon(Icons.library_books, size: 40.0),
       title: Text("Library", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
     ListTile(
       leading: Icon(Icons.health_and_safety, size: 40.0),
       title: Text("Health", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
     ListTile(
       leading: Icon(Icons.sports, size: 40.0),
       title: Text("Sports", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
     ListTile(
       leading: Icon(Icons.local_cafe,size: 40.0),
       title: Text("Cafe", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
      ListTile(
       leading: Icon(Icons.house_outlined,size: 40.0),
       title: Text("Hostel", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
      ListTile(
       leading: Icon(Icons.laptop_mac,size: 40.0),
       title: Text("Projects", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
      ListTile(
       leading: Icon(Icons.people,size: 40.0),
       title: Text("Students", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
      ListTile(
       leading: Icon(Icons.contact_mail,size: 40.0),
       title: Text("Contacts", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
       
       ),
       subtitle: Text("more details...", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
     ),
   ] ;
   return Scaffold(
     
     appBar: AppBar(
     
       title: Text("List Wheel Scroll View Demo"),
       centerTitle: true,
     ),
     
     body: Center(
       
child: ListWheelScrollView(
  itemExtent: 75, // size of each item in main axis
 children: items,
 magnification: 1.5, // if value > 1 => bigger.
 useMagnifier: true,
 physics: FixedExtentScrollPhysics(),
 diameterRatio: 1.5, //cylinerical diameter.
 squeeze: 0.9,
 onSelectedItemChanged: (index) => {
   setState((){
     _selectitemindex = index;

   })
 },
 ),
),
   );

  }
}