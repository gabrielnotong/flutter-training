class Exercise {
  String imageUrl;
  String imageBgColor;
  String icon;
  String iconColor;
  String text;
  int duration;
  bool favorite;

  Exercise({
    this.imageUrl,
    this.imageBgColor,
    this.icon,
    this.iconColor,
    this.text,
    this.duration,
    this.favorite,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      text: json['text'],
      imageUrl: json['imageUrl'],
      imageBgColor: json['imageBgColor'],
      icon: json['icon'],
      iconColor: json['iconColor'],
      duration: json['duration'],
      favorite: json['favorite'],
    );
  }
}
