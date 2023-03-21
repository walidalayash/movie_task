class RunningTime {
  int? hours;
  int? minutes;

  RunningTime({this.hours, this.minutes});

  RunningTime.fromJson(Map<String, dynamic> json) {
    hours = json['hours'];
    minutes = json['minutes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hours'] = this.hours;
    data['minutes'] = this.minutes;
    return data;
  }
}

class RentalDuration {
  int? days;

  RentalDuration({this.days});

  RentalDuration.fromJson(Map<String, dynamic> json) {
    days = json['days'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['days'] = this.days;
    return data;
  }
}
