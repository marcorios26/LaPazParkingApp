import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:flutter_map/flutter_map.dart';

class buscarCercaDeMi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BuscarCercaDeMiWidget(),
    );
  }
}

class BuscarCercaDeMiWidget extends StatelessWidget {
  const BuscarCercaDeMiWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: latLng.LatLng(-16.51932850695444, -68.11208037610675),
        zoom: 16.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate:
              "https://api.mapbox.com/styles/v1/marios26/ckyd837sa0mw714oarvd4fhqv/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFyaW9zMjYiLCJhIjoiY2t5ZDVwbnE3MDN5YjJ3bWx4M29seHlkeiJ9.Vqym00LUTvwAqfaoBiwvKw",
          additionalOptions: {
            'accesstoken':
                'pk.eyJ1IjoibWFyaW9zMjYiLCJhIjoiY2t5ZDV1bnJtMHBpeDJ1bnAxd3MzOHM5bCJ9.dS-pIbuW6fJMvwvqZ36h-w',
            'id': 'mapbox.mapbox-streets-v8'
          },
          attributionBuilder: (_) {
            return Text("© OpenStreetMap contributors");
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: latLng.LatLng(-16.51932850695444, -68.11208037610675),
              builder: (ctx) => Container(
                child: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
