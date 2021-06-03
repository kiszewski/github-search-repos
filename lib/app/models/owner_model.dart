class Owner {
  late String login;
  late int id;
  late String nodeId;
  late String avatarUrl;
  late String url;
  late String type;
  late bool siteAdmin;

  Owner(
      {required this.login,
      required this.id,
      required this.nodeId,
      required this.avatarUrl,
      required this.url,
      required this.type,
      required this.siteAdmin});

  Owner.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    url = json['url'];

    type = json['type'];
    siteAdmin = json['site_admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['id'] = this.id;
    data['node_id'] = this.nodeId;
    data['avatar_url'] = this.avatarUrl;

    data['type'] = this.type;
    data['site_admin'] = this.siteAdmin;
    return data;
  }
}
