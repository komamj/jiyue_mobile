import 'package:jiyue_mobile/data/enities/song.dart';

class StoreSong extends Song {
  //点播标识 ID（非点播项为 null)
  final String demandId;

  //内容项标识 ID
  final String contentId;

  //操作用户标识 ID（加入的用户）
  final String userId;

  bool isPlaying = false;

  StoreSong(
      {String songId,
      String name,
      int duration,
      String albumId,
      String albumName,
      String artistId,
      String artistName,
      this.demandId,
      this.contentId,
      this.userId})
      : super(
            songId: songId,
            name: name,
            duration: duration,
            albumId: albumId,
            albumName: albumName,
            artistId: artistId,
            artistName: artistName);

  factory StoreSong.fromJson(Map<String, dynamic> json) {
    return StoreSong(
        songId: json['mediaId'],
        name: json['mediaName'],
        duration: json['mediaInterval'],
        albumId: json['albumId'],
        albumName: json['albumName'],
        artistId: json['artistId'],
        artistName: json['artistName'],
        demandId: json['demandId'],
        contentId: json['id'],
        userId: json['userId']);
  }

  @override
  String toString() {
    return "${super.toString()},demandId:$demandId,contentId:$contentId,userId:$userId";
  }
}
