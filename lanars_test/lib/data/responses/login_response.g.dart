// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'results': instance.results,
      'info': instance.info,
    };

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      seed: json['seed'] as String,
      results: (json['results'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      version: json['version'] as String,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'seed': instance.seed,
      'results': instance.results,
      'page': instance.page,
      'version': instance.version,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      gender: json['gender'] as String,
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      email: json['email'] as String,
      login: LoginClass.fromJson(json['login'] as Map<String, dynamic>),
      dob: Dob.fromJson(json['dob'] as Map<String, dynamic>),
      registered: Dob.fromJson(json['registered'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
      nat: json['nat'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'email': instance.email,
      'login': instance.login,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'cell': instance.cell,
      'picture': instance.picture,
      'nat': instance.nat,
    };

Dob _$DobFromJson(Map<String, dynamic> json) => Dob(
      date: DateTime.parse(json['date'] as String),
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$DobToJson(Dob instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'age': instance.age,
    };

LoginClass _$LoginClassFromJson(Map<String, dynamic> json) => LoginClass(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      salt: json['salt'] as String,
      md5: json['md5'] as String,
      sha1: json['sha1'] as String,
      sha256: json['sha256'] as String,
    );

Map<String, dynamic> _$LoginClassToJson(LoginClass instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'md5': instance.md5,
      'sha1': instance.sha1,
      'sha256': instance.sha256,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
