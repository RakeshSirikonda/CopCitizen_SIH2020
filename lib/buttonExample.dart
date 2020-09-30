import 'package:cop_citizen/category_complaint.dart';
import 'package:cop_citizen/crime_record_view.dart';
import 'package:cop_citizen/emergency_helplines.dart';
import 'package:flutter/material.dart';

class CategoryScreenButton extends StatelessWidget {
  void selectComplaint(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return CategoryComplaintPage();
        },
      ),
    );
  }

  void selectTrackStatus(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return null;
        },
      ),
    );
  }

  void selectRequests(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return null;
        },
      ),
    );
  }

  void selectEmergencyContacts(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return EmergencyHelpline();
        },
      ),
    );
  }

  void selectViewCriminalPage(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return CrimeRecordView();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
      ),
      body: Column(
        children: <Widget>[
          FlatButton.icon(
            onPressed: () => selectComplaint(context),
            icon: RaisedButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              child: Text('Lodge a Complaint'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          RaisedButton(
            padding: EdgeInsets.all(0.0),
            onPressed: () {},
            child: Text('Track Status'),
          ),
          SizedBox(
            height: 5,
          ),
          RaisedButton(
            padding: EdgeInsets.all(0.0),
            onPressed: () => selectViewCriminalPage(context),
            child: Text('View Criminals'),
          ),
          SizedBox(
            height: 5,
          ),
          RaisedButton(
            padding: EdgeInsets.all(0.0),
            onPressed: () => selectEmergencyContacts(context),
            child: Text('Emergency Contacts'),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
