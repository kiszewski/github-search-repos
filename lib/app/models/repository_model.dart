import 'owner_model.dart';

class RepositoryModel {
  late int id;
  late String nodeId;
  late String name;
  late String fullName;
  late bool private;
  late Owner owner;
  late String htmlUrl;
  late String description;
  late bool fork;
  late String url;

  RepositoryModel({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.private,
    required this.owner,
    required this.htmlUrl,
    required this.description,
    required this.fork,
    required this.url,
  });

  RepositoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    private = json['private'];
    owner = Owner.fromJson(json['owner']);
    htmlUrl = json['html_url'];
    description = json['description'] == null ? '' : json['description'];
    fork = json['fork'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['node_id'] = this.nodeId;
    data['name'] = this.name;
    data['full_name'] = this.fullName;
    data['private'] = this.private;
    if (this.owner != null) {
      data['owner'] = this.owner.toJson();
    }
    data['html_url'] = this.htmlUrl;
    data['description'] = this.description;
    data['fork'] = this.fork;
    data['url'] = this.url;

    return data;
  }
}
