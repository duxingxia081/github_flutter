class CacheConfig {
  CacheConfig({
      this.enable, 
      this.maxAge, 
      this.maxCount,});

  CacheConfig.fromJson(dynamic json) {
    enable = json['enable'];
    maxAge = json['maxAge'];
    maxCount = json['maxCount'];
  }
  bool? enable;
  int? maxAge;
  int? maxCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['maxAge'] = maxAge;
    map['maxCount'] = maxCount;
    return map;
  }

}