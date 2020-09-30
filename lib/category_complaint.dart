import 'package:flutter/material.dart';

class CategoryComplaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lodge a Complaint',
        ),
      ),
      body: Center(
        child: Text(
          'Available Soon..',
        ),
      ),
    );
  }
}

// Activity for Lodging a violation
class CategoryComplaintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Complaint Registration'),
        ),
        body: CategoryComplaintPageStateful(),
    );
  }
}

class CategoryComplaintPageStateful extends StatefulWidget {
  CategoryComplaintPageStateful({Key key}) : super(key: key);

  @override
  _CategoryComplaintPageStateful createState() =>
      _CategoryComplaintPageStateful();
}

class _CategoryComplaintPageStateful
    extends State<CategoryComplaintPageStateful> {
  String dropdownValue = 'Select Police Commissionerate';
  String dropdownValue2 = 'Select Violation Category';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>[
              'Select Police Commissionerate',
              'Hyderabad',
              'Cyberabad',
              'Rachakonda',
              'Warangal',
              'Siddipet',
              'Karimnagar',
              'Ramagundem',
              'Nizamabad',
              'Khammam',
              'Nalgonda',
              'Jagtial',
              'Korutla',
              'Metpally'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          DropdownButton<String>(
            value: dropdownValue2,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue2 = newValue;
              });
            },
            items: <String>[
              'Select Violation Category',
              'Traffic Violations',
              'Burglary',
              'Happening Crimes',
              'Crime Against Women',
              'Violations By Police',
              'Suggestion for Better Policing',
              'Report Good Work',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          TextField(
            decoration: InputDecoration(
              helperText: 'Ex: Hyderabad',
              labelText: 'Place of Incident',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              helperText: 'Ex: Have seen him parking at no parking area',
              labelText: 'Description',
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Submit',
                style: TextStyle(
                  fontSize: 20,
                )),
            textTheme: ButtonTextTheme.accent,
          )
        ],
      ),
    );
  }
}
