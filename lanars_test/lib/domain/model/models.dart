class UserModel {
  UserModel({
    required this.avatar,
    required this.userNmae,
    required this.email,
  });
  String avatar;
  String userNmae;
  String email;
}

class PhotographerModel {
  final String image;
  final String name;
  final String description;
  final bool isHeader;

  PhotographerModel(
      {required this.image,
      required this.name,
      required this.description,
      required this.isHeader});
}
