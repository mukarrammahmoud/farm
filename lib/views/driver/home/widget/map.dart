// ignore_for_file: must_be_immutable

import 'package:farm/controller/driver/map_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class LocationMap extends StatelessWidget {
  const LocationMap({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => MapControllerImp(),
    );
    // print(currentLoczation);
    return GetBuilder<MapControllerImp>(builder: (controller) {
      return Scaffold(
        body: controller.currentLoczation == null
            ? const Center(child: CircularProgressIndicator())
            : controller.result == true
                ? SizedBox(
                    height: double.infinity,
                    child: FlutterMap(
                        mapController: controller.mapController,
                        options: MapOptions(
                            initialCenter: LatLng(
                                controller.currentLoczation!.latitude!,
                                controller.currentLoczation!.longitude!),
                            initialZoom: 15.0,
                            onTap: (tapPosition, point) {
                              controller.getNameLoc(
                                  point.latitude, point.longitude);
                              // getNameLoaction(point.latitude, point.longitude);
                              // print("============== ${point.latitude}");
                              controller.addDestinationMarker(point);
                            }),
                        children: [
                          TileLayer(
                            userAgentPackageName:
                                'dev.fleaflet.flutter_map.example',
                            urlTemplate:
                                "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                            subdomains: const ['a', 'b', 'c'],
                          ),
                          MarkerLayer(
                            markers: controller.markers,
                          ),
                          PolylineLayer(polylines: [
                            Polyline(
                                points: controller.routePoint,
                                strokeWidth: 4.0,
                                color: AppColors.splashColor),
                          ]),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: FloatingActionButton(
                                  backgroundColor:
                                      AppColors.backGroundDrawerColorOne,
                                  child: const Icon(
                                    Icons.location_on_sharp,
                                    color: AppColors.greenText,
                                  ),
                                  onPressed: () {
                                    if (controller.currentLoczation != null) {
                                      controller.mapController.move(
                                          LatLng(
                                              controller
                                                  .currentLoczation!.latitude!,
                                              controller.currentLoczation!
                                                  .longitude!),
                                          15.0);
                                    }
                                  }),
                            ),
                          )
                        ]),
                  )
                : Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.signal_wifi_connected_no_internet_4,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
      );
    });
  }
}
