import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //set initial Orientation to landscape
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Test App",
        home: Scaffold(
        appBar: AppBar(title:Text("Switch Orientation Mode")),
        body: OrientationBuilder(
              builder: (context, orientation) {
                  return Container(
                    child: Center(
                      child: ElevatedButton( 
                        child: Text("Switch Orientation"),
                        onPressed: (){
                          if(MediaQuery.of(context).orientation == Orientation.portrait){
                            //if Orientation is portrait then set to landscape mode
                              SystemChrome.setPreferredOrientations([
                                  DeviceOrientation.landscapeLeft,
                                  DeviceOrientation.landscapeRight,
                                ]);
                          }else{
                              //if Orientation is landscape then set to portrait
                              SystemChrome.setPreferredOrientations([
                                DeviceOrientation.portraitDown,
                                DeviceOrientation.portraitUp,
                              ]);
                          }
                        },
                      )
                    ),
                  );
        }),
      )
    );
  }
}