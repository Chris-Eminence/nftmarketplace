import 'dart:ui';

class NFTDataModel {
  // final String id;
  final String? name;
  final String? description;
  final String? image;
  final String? imageDetails;
  final String? owner;
  final String? price;
  final String? number;
  final String? days;
  final String? hours;
  final Color? color;
  final Color? colorShades;
  final String? minutes;

  NFTDataModel(  {
    //this.id,
    this.name,
    this.imageDetails,
    this.description,
    this.image,
    this.owner,
    this.price,
    this.number,
    this.color,
    this.colorShades,
    this.days,
    this.hours,
    this.minutes,
  });
}
