class Clips {
  String clip;
  String dis;

  Clips({required this.clip, required this.dis});

  factory Clips.fromMap({required Map data}) {
    return Clips(
      clip: data['clip'],
      dis: data['dis'],
    );
  }
}
