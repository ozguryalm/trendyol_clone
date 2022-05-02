import 'package:flutter/cupertino.dart';

class App {}

extension RouteManagment on App {
  Future<dynamic> to(Widget route, BuildContext context,) {
    return Navigator.push(
        context, CupertinoPageRoute(builder: (context) => route));
  }

  Future<dynamic> toNamed(String routeName, BuildContext context,{Object? arguments,}) {
    return Navigator.pushNamed(context, routeName,arguments:  arguments,);
  }

  back(BuildContext context,result) {
    return Navigator.pop(context,result);
  }
}
