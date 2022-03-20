import 'package:google_maps_flutter/google_maps_flutter.dart';

Marker first =Marker(
  markerId: MarkerId('Gujaz Chowk'),
  position: LatLng(38.46796133580664, -122.105749655962),
  infoWindow: InfoWindow(title: "shreef Autoz"),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueYellow,
  )
);

Marker second =Marker(
  markerId: MarkerId('Awami Colony'),
  position: LatLng(36.46796133580664, -122.805749655962),
  infoWindow: InfoWindow(title: "Mughal Autoz"),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueYellow,
  )
);

Marker thrid =Marker(
  markerId: MarkerId('Atif Chorangi'),
  position: LatLng(37.76796133580664, -122.705749655962),
  infoWindow: InfoWindow(title: "pak Autoz"),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueYellow,
  )
);

Marker four =Marker(
  markerId: MarkerId('Ramees Gote'),
  position: LatLng(35.46796133580664, -122.905749655962),
  infoWindow: InfoWindow(title: "shreef Autoz"),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueYellow,
  )
);