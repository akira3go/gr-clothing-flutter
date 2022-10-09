import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class WebviewPage extends ConsumerWidget {
  const WebviewPage({Key? key, required this.initialUrl}) : super(key: key);

  final String initialUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      //   shape: const Border(bottom: BorderSide(color: ColorName.peoples, width: 1)),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.notifications, color: ColorName.peoples),
      //       iconSize: 40,
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.menu_book, color: ColorName.peoples),
      //       iconSize: 40,
      //     ),
      //   ],
      // ),
      body: WebView(
        backgroundColor: Colors.white,
        initialUrl: initialUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
