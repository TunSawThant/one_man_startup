import 'package:flutter/material.dart';
class Trip {
  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final String travelType;
  final double budget;

  Trip(this.title,this.startDate,this.endDate,this.budget,this.travelType);
}