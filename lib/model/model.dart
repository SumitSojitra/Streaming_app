class topS {
  String img;
  String dp;
  String title;
  String subtitle;
  String video;

  topS({
    required this.img,
    required this.dp,
    required this.subtitle,
    required this.title,
    required this.video,
  });

  factory topS.fromMap({required Map data}) {
    return topS(
      img: data['img'],
      dp: data['dp'],
      subtitle: data['subtitle'],
      title: data['title'],
      video: data['video'],
    );
  }
}
