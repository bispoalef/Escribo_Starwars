import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:starwars/components/topo_do_app..dart';

class PaginaWebView extends StatelessWidget {
  const PaginaWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scafoldKey,
      appBar: TopoDoApp(
        apiDados: null,
        context: context,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse('https://www.starwars.com/community'),
        ),
      ),
    );
  }
}
