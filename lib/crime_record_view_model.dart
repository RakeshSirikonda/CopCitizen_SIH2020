import 'package:flutter/material.dart';

class CrimeRecordModel {
  final String name;
  final NetworkImage image;
  final String crimeType;
  final String number;
  final String height;
  final String weight;
  final String s_no;
  final String prison;
  final String progress;

  CrimeRecordModel({
    @required this.name,
    this.image,
    @required this.crimeType,
    @required this.height,
    @required this.weight,
    @required this.number,
    @required this.prison,
    @required this.progress,
    @required this.s_no,
  });
}
