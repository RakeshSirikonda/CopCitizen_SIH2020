import 'package:flutter/material.dart';
import './crime_record_view_model.dart';

class CrimeRecordView extends StatelessWidget {
  final List<CrimeRecordModel> crimeRecords = [
    CrimeRecordModel(
      name: 'Name:  Charithesh',
      image: NetworkImage(
          'https://www.pinclipart.com/picdir/big/74-743227_barack-obama-clipart.png'),
      crimeType: 'Crime Type: Phone Theft',
      height: 'Height:  5.6',
      weight: 'Weight:  55kg',
      number: 'Phone: 9876543210',
      prison: 'Prison:  Charlapalli',
      progress: 'Progress:  Caught',
      s_no: 'S.No:  120',
    ),
    CrimeRecordModel(
      name: 'Name:  Shiva',
      image: NetworkImage(
          'https://www.pinclipart.com/picdir/big/74-743227_barack-obama-clipart.png'),
      crimeType: 'Crime Type: Phone Theft',
      height: 'Height:  5.6',
      weight: 'Weight:  55kg',
      number: 'Phone: 9876543210',
      prison: 'Prison:  Charlapalli',
      progress: 'Progress:  Caught',
      s_no: 'S.No:  120',
    ),
    CrimeRecordModel(
      name: 'Name:  Shiva Sai',
      image: NetworkImage(
          'https://www.pinclipart.com/picdir/big/74-743227_barack-obama-clipart.png'),
      crimeType: 'Crime Type: Phone Theft',
      height: 'Height:  5.6',
      weight: 'Weight:  55kg',
      number: 'Phone: 9876543210',
      prison: 'Prison:  Charlapalli',
      progress: 'Progress:  Caught',
      s_no: 'S.No:  120',
    ),
    CrimeRecordModel(
      name: 'Name:  Saicharan',
      image: NetworkImage(
          'https://www.pinclipart.com/picdir/big/74-743227_barack-obama-clipart.png'),
      crimeType: 'Crime Type: Phone Theft',
      height: 'Height:  5.6',
      weight: 'Weight:  55kg',
      number: 'Phone: 9876543210',
      prison: 'Prison:  Charlapalli',
      progress: 'Progress:  Caught',
      s_no: 'S.No:  120',
    ),
    CrimeRecordModel(
      name: 'Name:  Rakesh',
      image: NetworkImage(
          'https://www.pinclipart.com/picdir/big/74-743227_barack-obama-clipart.png'),
      crimeType: 'Crime Type: Phone Theft',
      height: 'Height:  5.6',
      weight: 'Weight:  55kg',
      number: 'Phone: 9876543210',
      prison: 'Prison:  Charlapalli',
      progress: 'Progress:  Caught',
      s_no: 'S.No:  120',
    ),
    CrimeRecordModel(
      name: 'Name:  Anirudh',
      image: NetworkImage(
          'https://www.pinclipart.com/picdir/big/74-743227_barack-obama-clipart.png'),
      crimeType: 'Crime Type: Phone Theft',
      height: 'Height:  5.6',
      weight: 'Weight:  55kg',
      number: 'Phone: 9876543210',
      prison: 'Prison:  Charlapalli',
      progress: 'Progress:  Caught',
      s_no: 'S.No:  120',
    ),
  ];

  ViewCrim(CrimeRecordModel p) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Details"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Card(
                child: Image(
                  image: p.image,height: 150,width: 500,
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(p.s_no),
                    Text(p.name),
                    Text(p.crimeType),
                    Text(p.height),
                    Text(p.weight),
                    Text(p.number),
                    Text(p.prison),
                    Text(p.progress),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  AddCrime() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Criminal'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Name of the Criminal',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Crime Type',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Place of Crime',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Criminal\'s Mail ID',
            ),
          ),
          TextField(
            maxLines: 8,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Address',
            ),
          ),
          RaisedButton(
            onPressed: () {},
            textTheme: ButtonTextTheme.primary,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Criminal Records',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: crimeRecords.map((crD) {
            return InkWell(
              onTap: () {},
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ViewCrim(crD)));
                  },
                  title: Text(crD.name),
                  leading: Icon(
                    Icons.account_circle,
                    size: 55,
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    size: 35,
                  ),
                  subtitle: Text(crD.crimeType),
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddCrime()));
          },
          child: Icon(
            Icons.add,
            size: 50,
          )),
    );
  }
}
