import 'package:fetch_data/model/runningTime.dart';

import 'Genres.dart';

class Data {
  String? id;
  String? title;
  String? description;
  String? releaseDate;
  String? img;
  String? thumb;
  RunningTime? runningTime;
  String? rating;
  int? rentalRate;
  RentalDuration? rentalDuration;
  int? damageCost;
  bool? isDisabled;
  String? createdAt;
  String? updatedAt;
  String? boxOffice;
  String? fulltext;
  int? avgRating;
  List<Genres>? genres;

  Data(
      {this.id,
      this.title,
      this.description,
      this.releaseDate,
      this.img,
      this.thumb,
      this.runningTime,
      this.rating,
      this.rentalRate,
      this.rentalDuration,
      this.damageCost,
      this.isDisabled,
      this.createdAt,
      this.updatedAt,
      this.boxOffice,
      this.fulltext,
      this.avgRating,
      this.genres});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    releaseDate = json['release_date'];
    img = json['img'];
    thumb = json['thumb'];
    runningTime = json['running_time'] != null
        ? new RunningTime.fromJson(json['running_time'])
        : null;
    rating = json['rating'];
    rentalRate = json['rental_rate'];
    rentalDuration = json['rental_duration'] != null
        ? new RentalDuration.fromJson(json['rental_duration'])
        : null;
    damageCost = json['damage_cost'];
    isDisabled = json['is_disabled'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    boxOffice = json['box_office'];
    fulltext = json['fulltext'];
    avgRating = json['avg_rating'];
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(new Genres.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['release_date'] = this.releaseDate;
    data['img'] = this.img;
    data['thumb'] = this.thumb;
    if (this.runningTime != null) {
      data['running_time'] = this.runningTime!.toJson();
    }
    data['rating'] = this.rating;
    data['rental_rate'] = this.rentalRate;
    if (this.rentalDuration != null) {
      data['rental_duration'] = this.rentalDuration!.toJson();
    }
    data['damage_cost'] = this.damageCost;
    data['is_disabled'] = this.isDisabled;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['box_office'] = this.boxOffice;
    data['fulltext'] = this.fulltext;
    data['avg_rating'] = this.avgRating;
    if (this.genres != null) {
      data['genres'] = this.genres!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
