import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'trip.dart';
class HomeView extends StatelessWidget {
  final List<Trip> _tripsList=[
    Trip('Monywa', DateTime.now(), DateTime.now(), 200.0, 'Car'),
    Trip('Mandalay', DateTime.now(), DateTime.now(), 3200.0, 'Car'),
    Trip('Yangon', DateTime.now(), DateTime.now(), 160.0, 'Bus'),
    Trip('New York City', DateTime.now(), DateTime.now(), 6200.0, 'Plane'),
    Trip('New City', DateTime.now(), DateTime.now(), 34200.0, 'Plane'),
    Trip('Insein', DateTime.now(), DateTime.now(), 2300.0, 'Bus'),
    Trip('Boston', DateTime.now(), DateTime.now(), 4200.0, 'Car'),
    Trip('Nay Pyi Taw', DateTime.now(), DateTime.now(), 4200.0, 'Car'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child:new ListView.builder(
          itemCount: _tripsList.length,
        itemBuilder: (BuildContext context,int index)=>buildTripCard(context,index),
      ) ,

    );
  }

  Widget buildTripCard(BuildContext context,int index){
    final trips=_tripsList[index];
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Text(trips.title,style: TextStyle(fontSize: 30.0),),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:4.0,bottom: 80.0),
                child: Row(
                  children: <Widget>[
                    Text("${DateFormat("dd/MM/yyyy").format(trips.startDate).toString()}-${DateFormat("dd/MM/yyyy").format(trips.endDate).toString()}"),
                    Spacer(),
                  ],
                ),
              ),
            Row(
              children: <Widget>[
                Text("\$${trips.budget.toStringAsFixed(2)}",style: TextStyle(fontSize: 35.0),),
                Spacer(),
                Text(trips.travelType,),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}
