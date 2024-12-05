// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrnamentData {
  String? rightOrnament;
  String? leftOrnament;
  bool? isSeen;
  OrnamentData({
    required this.rightOrnament,
    required this.leftOrnament,
    this.isSeen = false,
  });
}
