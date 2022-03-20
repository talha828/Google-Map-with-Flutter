import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_with_flutter/maker_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  Completer<GoogleMapController> _controller = Completer();
  List<Marker> marker=[];
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
Polygon _polygon = Polygon(polygonId:PolygonId( "kuch v"),
         points: [
           LatLng(38.46796133580664, -122.105749655962),
           LatLng(37.76796133580664, -122.705749655962),
           LatLng(36.46796133580664, -122.805749655962),
          LatLng(35.46796133580664, -122.905749655962),
         ],
         strokeColor: Colors.amber,
         strokeWidth: 5,
         fillColor: Colors.transparent,
);
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 10.151926040649414);

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    marker.add(first);
    marker.add(second);
    marker.add(thrid);
    marker.add(four);
  }

  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child:Scaffold(
         appBar:AppBar(
           title:Center(
             child:Text("Googe Map"),
           )
         ),
         body:Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           child: GoogleMap(
             polygons: {
               _polygon
             },
             mapToolbarEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: marker.map((e) => e).toSet(),
      ),
         ),
      //          floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('To the lake!'),
      //   icon: Icon(Icons.directions_boat),
      // ),
    )
       );
  }
  //   Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
