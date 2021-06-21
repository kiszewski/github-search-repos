import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class RepositoryWebviewPage extends StatefulWidget {
  final String repoUrl;
  final String title;
  const RepositoryWebviewPage(
      {Key? key, this.title = 'RepositoryWebviewPage', required this.repoUrl})
      : super(key: key);
  @override
  RepositoryWebviewPageState createState() => RepositoryWebviewPageState();
}

class RepositoryWebviewPageState extends State<RepositoryWebviewPage> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(title: Text('Repositório')),
      url: widget.repoUrl,
    );
  }
}
