import 'package:demo_practice/components/tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: 'NearBy'),
      body: FlutterMap(
        options: MapOptions(center: LatLng(51.509364, -0.128928), zoom: 10),
        layers: [
          TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
          MarkerLayerOptions(markers: [
            Marker(
              width: 100,
              height: 50,
              point: LatLng(51.509364, -0.128928),
              builder: (context) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(14))
                      ),
                   child: Text('username',style: TextStyle(color: Colors.black),),
                    ),
                    Icon(Icons.location_on_sharp,color: Colors.red,),
                   // SvgPicture.asset('assets/svg/ic_location.svg',color: Colors.red,)
                  ],
                );
              },
            )
          ])
        ],
      ),
    );
  }
}
