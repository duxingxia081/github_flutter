import 'License.dart';
import 'User.dart';

class Repo {
  Repo({
      this.id, 
      this.name, 
      this.fullName, 
      this.owner, 
      this.parent, 
      this.private, 
      this.description, 
      this.fork, 
      this.language, 
      this.forksCount, 
      this.stargazersCount, 
      this.size, 
      this.defaultBranch, 
      this.openIssuesCount, 
      this.pushedAt, 
      this.createdAt, 
      this.updatedAt, 
      this.subscribersCount, 
      this.license,});

  Repo.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    fullName = json['full_name'];
    owner = json['owner'];
    parent = json['parent'];
    private = json['private'];
    description = json['description'];
    fork = json['fork'];
    language = json['language'];
    forksCount = json['forks_count'];
    stargazersCount = json['stargazers_count'];
    size = json['size'];
    defaultBranch = json['default_branch'];
    openIssuesCount = json['open_issues_count'];
    pushedAt = json['pushed_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    subscribersCount = json['subscribers_count'];
    license = json['license'] != null ? License.fromJson(json['license']) : null;
  }
  int? id;
  String? name;
  String? fullName;
  User? owner;
  Repo? parent;
  bool? private;
  String? description;
  bool? fork;
  String? language;
  int? forksCount;
  int? stargazersCount;
  int? size;
  String? defaultBranch;
  int? openIssuesCount;
  String? pushedAt;
  String? createdAt;
  String? updatedAt;
  int? subscribersCount;
  License? license;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['full_name'] = fullName;
    map['owner'] = owner;
    map['parent'] = parent;
    map['private'] = private;
    map['description'] = description;
    map['fork'] = fork;
    map['language'] = language;
    map['forks_count'] = forksCount;
    map['stargazers_count'] = stargazersCount;
    map['size'] = size;
    map['default_branch'] = defaultBranch;
    map['open_issues_count'] = openIssuesCount;
    map['pushed_at'] = pushedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['subscribers_count'] = subscribersCount;
    if (license != null) {
      map['license'] = license?.toJson();
    }
    return map;
  }

}