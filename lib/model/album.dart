
class Movie{
  final int img;
  final int? id;
  final String? title;

Movie({
required this.img,
required this.id,
required this.title,

});
 factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      img: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
  

}