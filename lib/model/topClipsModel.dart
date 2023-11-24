class topC {
  String img;
  String dp;
  String title;
  String subtitle;

  topC(
      {required this.dp,
      required this.subtitle,
      required this.title,
      required this.img});

  factory topC.fromMap({required Map data}) {
    return topC(
      dp: data['dp'],
      subtitle: data['subtitle'],
      title: data['title'],
      img: data['img'],
    );
  }
}
