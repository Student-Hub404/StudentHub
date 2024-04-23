import 'package:cloud_firestore/cloud_firestore.dart';

class LocationsModel {
  String? videoURL;
  String? title;

  LocationsModel({
    this.videoURL,
    this.title,
  });
  LocationsModel.fromJason(Map<String, dynamic> json) {
    videoURL = json['video'];
    title = json['title'];
  }

  Map<String, dynamic> toMap() {
    return {
      'video': videoURL,
      'title': title,
    };
  }

  factory LocationsModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return LocationsModel(
      videoURL: data['video'],
      title: data['title'],
    );
  }
}
