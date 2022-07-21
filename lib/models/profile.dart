import 'CacheConfig.dart';
import 'User.dart';

class Profile {
  Profile({
      this.user, 
      this.token, 
      this.theme, 
      this.cache, 
      this.lastLogin, 
      this.locale,});

  Profile.fromJson(dynamic json) {
    user = json['user'];
    token = json['token'];
    theme = json['theme'];
    cache = json['cache'];
    lastLogin = json['lastLogin'];
    locale = json['locale'];
  }
  User? user;
  String? token;
  int? theme;
  CacheConfig? cache;
  String? lastLogin;
  String? locale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user'] = user;
    map['token'] = token;
    map['theme'] = theme;
    map['cache'] = cache;
    map['lastLogin'] = lastLogin;
    map['locale'] = locale;
    return map;
  }

}