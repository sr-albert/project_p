import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:project_p/ui/core/layout/app.layout.dart';
import 'package:project_p/ui/core/models/function.model.dart';

class FunctionalsPage extends StatelessWidget {
  const FunctionalsPage({Key? key}) : super(key: key);

  static List<FunctionModel> functions = [];

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Dizim share',
        text: 'Dizim share text',
        linkUrl: 'https://dizim.ai/',
        chooserTitle: 'Dizim Chooser Title');
  }

  void scanner(BuildContext context) {
    Navigator.pushNamed(context, "/scanner");
  }

  void onLogin() {}

  void onClick({required String name, required BuildContext context}) {
    // Direct to page with name
    switch (name) {
      case "share":
        share();
        break;
      case "scanner":
        scanner(context);
        break;
      case "login":
        break;

      default:
        break;
    }
  }

  initData() {
    functions = functionsJson.map((e) => FunctionModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    initData();

    return AppLayout(
        appBar: AppBar(
          title: Text("PROJECT P"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListView.builder(
                  itemCount: functions.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    // const Map<String, dynamic> item = functions.map((e, index) => null);
                    FunctionModel _item = functions[index];
                    return TextButton.icon(
                        onPressed: () =>
                            onClick(name: _item.name, context: context),
                        icon: Icon(_item.icon),
                        label: Text(_item.name));
                  }),
            ],
          ),
        ) //
        );
  }
}

const functionsJson = [
  {"id": "share", "name": "Share", "icon": Icons.share, "path": "/share"},
  {
    "id": "scanner",
    "name": "Scanner",
    "icon": Icons.scanner,
    "path": "/scanner"
  },
  {"id": "login", "name": "Login", "icon": Icons.login, "path": "/login"}
];
