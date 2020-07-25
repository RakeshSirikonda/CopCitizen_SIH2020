import 'package:cop_citizen/emergency_helpline_list.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter/material.dart';
import './emergency_helpline_list.dart';


class EmergencyHelpline extends StatelessWidget {
  final List<EmergencyHelpLineList> emergencyHelpList = [
    EmergencyHelpLineList(
      title: 'Police',
      number: '100',
    ),
    EmergencyHelpLineList(
      title: 'Ambulance',
      number: '108',
    ),
    EmergencyHelpLineList(
      title: 'Fire Station',
      number: '101',
    ),
    EmergencyHelpLineList(
      title: 'Child Helpline',
      number: '1098',
    ),
    EmergencyHelpLineList(
      title: 'Election Commission',
      number: '1950',
    ),
    EmergencyHelpLineList(
      title: 'National Highways Helpline',
      number: '1033',
    ),
    EmergencyHelpLineList(
      title: 'Volunteer Helpline',
      number: '8639448734',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Helpline'),
      ),
      body: Column(
        children: emergencyHelpList.map((eHL) {
          return Card(
            child: ListTile(
              title: Text(eHL.title),
              leading: Icon(Icons.call),
              trailing: Icon(Icons.arrow_right),
              onTap: () => UrlLauncher.launch('tel:${eHL.number}'),
              //onTap: _launchURL(),
            ),
          );
        }).toList(),
      ),
    );
  }
}
