import 'package:flutter/cupertino.dart';
import 'package:layout_app/screens/home/recent_rides_section/single_ride_list_tile.dart';

Widget recentRidesSection = Column(
  children: const [
    SingleRideListTile(
        fromText: 'Львів, Львівська область, Україна, 79000',
        toText: 'Червоноград, Львівська область, Україна, 80100',
        passengersNumber: 2),
    SingleRideListTile(
        fromText: 'Червоноград, Львівська область, Україна, 80100',
        toText: 'Львів, Львівська область, Україна, 79000',
        passengersNumber: 1),
    SingleRideListTile(
        fromText: 'Львів, Львівська область, Україна, 79000',
        toText: 'Самбір, Львівська область, Україна, 81400',
        passengersNumber: 2),
    SingleRideListTile(
        fromText: 'Самбір, Львівська область, Україна, 81400',
        toText: 'Червоноград, Львівська область, Україна, 80100',
        passengersNumber: 1),
  ],
);
