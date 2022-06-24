


// ignore: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class VisitorData{
  String?  visitorName,typeOfVisitor,visitorImage,inTime,inDate,outDate,id,visitorNumber,expectedDuration,outTime,timeElapsed;
  Image? imagefile;
  VisitorData({
   this.id,
   this.visitorName,
   this.visitorNumber,
   this.visitorImage,
   this.typeOfVisitor,
   this.expectedDuration,
   this.inTime,
   this.inDate,
   this.outTime,
   this.outDate,
   this.timeElapsed,
   this.imagefile,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': visitorName,
      'number': visitorNumber,
      'imagepath':visitorImage,
      'type':typeOfVisitor,
      'duration':expectedDuration,
      'intime':inTime,
      'inDate' :inDate,
      'outtime':outTime,
      'outdate':outDate,
      'elapsed':timeElapsed,
    };
  }
  

   @override
  String toString() {
    return 'VisitorData{id: $id, name: $visitorName,number: $visitorNumber,imagepath:$visitorImage,type:$typeOfVisitor,duration:$expectedDuration,intime:$inTime,inDate:$inDate,outtime:$outTime,outdate:$outDate,elapsed:$timeElapsed,}';                                     
  }
}
// ignore: unnecessary_new
VisitorData newVisitor = new VisitorData();
List<VisitorData> visList =[];



List<VisitorData> data=  [
VisitorData(
    id: "0",
    visitorImage: 'assets/images/balaji.jpg',
    visitorName: 'Rocky',
    visitorNumber: '9876543210',
    typeOfVisitor: 'Delivery',
    expectedDuration: '20 mins',
    inTime: '09:48.00',
    inDate: '05-05-2022',
    outTime: '10:30:50',
    outDate: '05-05-2022',
    timeElapsed: '00:42:10',
  ),
];


  
