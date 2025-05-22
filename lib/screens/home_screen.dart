import 'package:flutter/material.dart';
import '../models/station.dart';
import '../utils/auth_service.dart';
import '../widgets/station_card.dart';
import './booking_screen.dart';
import './login_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Hardcoded list of stations
  final List<Station> stations = [
    Station(
      id: '1',
      name: 'Tola Auto',
      distance: 2.5,
      rating: 4.8,
      type: 'Mechanic',
      imageUrl: 'https://example.com/station1.jpg',
    ),
    Station(
      id: '2',
      name: 'Speedy Repais',
      distance: 3.2,
      rating: 4.5,
      type: 'Mechanic',
      imageUrl: 'https://example.com/station2.jpg',
    ),
    Station(
      id: '3',
      name: 'Total Service Center',
      distance: 1.8,
      rating: 4.9,
      type: 'Mechanic',
      imageUrl: 'https://example.com/station3.jpg',
    ),
    Station(
      id: '4',
      name: 'Barron Fuel Station',
      distance: 4.0,
      rating: 4.2,
      type: 'Fuel Station',
      imageUrl: 'https://example.com/station4.jpg',
    ),
    Station(
      id: '5',
      name: 'AutoCare Plus',
      distance: 5.6,
      rating: 4.6,
      type: 'Mechanic',
      imageUrl: 'https://example.com/station5.jpg',
    ),
  ];

  void _logout() {
    AuthService().logout();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Repair Stations'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: stations.length,
        itemBuilder: (context, index) {
          final station = stations[index];
          return StationCard(
            station: station,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookingScreen(station: station),
                ),
              );
            },
          );
        },
      ),
    );
  }
}