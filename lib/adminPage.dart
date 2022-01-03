import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  var username;

  AdminPage({Key? key, required String username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
    // final myImageAndCaption = [
    //   ["lib/assets/TNP.jpg", "Scan Barcode"],
    //   ["lib/assets/TNP.jpg", "$username"],
    //   ["lib/assets/TNP.jpg", "this is a big text"],
    //   ["lib/assets/TNP.jpg", "trucking"],
    // ];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text("Menu Utama",style: TextStyle(fontSize: 24.0),),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.exit_to_app, color: Colors.white,size: 40,),
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/MyHomePage');
              },),
          ],),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: [
            FlatButton(
            onPressed: (){Navigator.pushReplacementNamed(context, '/MemberPage');},
            color: Colors.white,
            padding: EdgeInsets.all(30.0),
            child: Column(
            children: <Widget>[
            Image.asset("lib/assets/stockin.jpg"),
            Text("$username")
          ],
        )),
            FlatButton(
                onPressed: (){print('click on edit2');},
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("lib/assets/truck.jpg"),
                    Text("$username")
                  ],
                )),
            FlatButton(
                onPressed: (){print('click on edit3');},
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("lib/assets/TNP.jpg"),
                    Text("$username")
                  ],
                )),
            FlatButton(
                onPressed: (){print('click on edit4');},
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("lib/assets/kapal.jpg"),
                    Text("$username")
                  ],
                ))
          ],

        ),
      ),
    );
  }
}
