//new code
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Import LatLng

import 'attendance_screen.dart'; // Import the attendance screen
import 'location_screen.dart';
import 'member.dart';

class MemberScreen extends StatelessWidget {
  // Example member data with LatLng and attendance list
  final List<Member> members = [
    Member(
      name: "Shifa Sheikh",
      currentLocation: const LatLng(37.42796133580664, -122.085749655962),
      attendance: [], // Empty attendance list
    ),
    Member(
      name: "Susen Jayswal",
      currentLocation: const LatLng(37.42996133580664, -122.083749655962),
      attendance: [], // Empty attendance list
    ),
    Member(
      name: "Amit Kumar",
      currentLocation: const LatLng(37.42696133580664, -122.080749655962),
      attendance: [], // Empty attendance list
    ),
  ];
  //const MemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Member List"),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          final member = members[index];
          return ListTile(
            title: Text(member.name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.location_on),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationScreen(member: member),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.check_circle),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AttendanceScreen(member: member),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
