import 'package:exam_five/data/models/spacex_model.dart';
import 'package:flutter/material.dart';

class SpaceXWidget extends StatelessWidget {
  final SpacexModel spaceX;
  const SpaceXWidget({Key? key, required this.spaceX}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 150,),
          SizedBox(
              height: 300,
              width: 300,
              child: Image.network(spaceX.links.patch.large)),
          Center(child: Column(
            children: [
              Text(spaceX.name),
              Text(spaceX.rocket),
              Text(spaceX.id),
              Text(spaceX.launchpad),
              Text(spaceX.datePrecision),
              Text(spaceX.flightNumber.toString()),
            ],
          )),
        ],

      ),

    );
  }
}
