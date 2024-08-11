// ignore_for_file: unused_local_variable, depend_on_referenced_packages

import 'dart:convert';

import 'package:farm/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart' as loc;
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
// import 'package:location/location.dart';

abstract class MyMapController extends GetxController {
  getCurrentLocation();
  addDestinationMarker(LatLng points);
  getNameLoaction(double lat, double lan);
  getRoute(LatLng destination);
}

class MapControllerImp extends MyMapController {
  bool result = false;
  late MapController mapController;
  LocationData? currentLoczation;
  List<LatLng> routePoint = [];
  List<Marker> markers = [];
  final String orsApiKey =
      //5b3ce3597851110001cf6248ad3d36bfb3a34c3e8b90ad4bf0c788a4
      "5b3ce3597851110001cf6248ad3d36bfb3a34c3e8b90ad4bf0c788a4";

  @override
  addDestinationMarker(LatLng points) {
    markers.add(Marker(
        width: 80.0,
        height: 80.0,
        point: points,
        child: const Icon(
          Icons.location_on,
          color: Colors.red,
          size: 40,
        )));
    update();
    getRoute(points);
    update();
  }

  @override
  getCurrentLocation() async {
    var location = loc.Location();

    try {
      var userLocation = await location.getLocation();
      result = await InternetConnectionChecker().hasConnection;

      currentLoczation = userLocation;
      update();
      markers.add(Marker(
          width: 80.0,
          height: 80.0,
          point: LatLng(userLocation.latitude!, userLocation.longitude!),
          child: const Icon(
            Icons.my_location,
            color: AppColors.splashColor,
            size: 40,
          )));
      update();
    } on Exception {
      currentLoczation = null;
    }
    location.onLocationChanged.listen((LocationData newLocation) {
      currentLoczation = newLocation;
      update();
    });
  }

  @override
  void onInit() {
    getCurrentLocation();
    mapController = MapController();
    super.onInit();
  }

  @override
  getNameLoaction(double lat, double lan) async {
    final coordinates = Coordinates(lat, lan);
    List<Address> addresses;
    Address first;
    addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    first = addresses.first;
    update();
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  getNameLoc(double latitude, double longitude) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);
    update();

  }

  @override
  getRoute(LatLng destination) async {
    if (currentLoczation == null) return;

    if (result == true) {
      update();

      final start =
          LatLng(currentLoczation!.latitude!, currentLoczation!.longitude!);
      final response = await http.get(
        Uri.parse(
            'https://api.openrouteservice.org/v2/directions/driving-car?api_key=$orsApiKey&start=${start.longitude},${start.latitude}&end=${destination.longitude},${destination.latitude}'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        update();

        // final List<dynamic> coords =
        //     data['feature'][0]["geometry"]["coordinates"];
        // print(coords);

        // routePoint =
        //     coords.map((coords) => LatLng(coords[1], coords[0])).toList();
        // markers.add(Marker(
        //     width: 80.0,
        //     height: 80.0,
        //     point: destination,
        //     child: const Icon(
        //       Icons.location_on,
        //       color: Colors.red,
        //       size: 40,
        //     )));
      } else {}
    }
  }
}
