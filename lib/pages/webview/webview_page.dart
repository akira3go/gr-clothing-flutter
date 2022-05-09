import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/pages/home/home_router_delegate.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:gr_clothing_flutter/gen/assets.gen.dart';

class WebviewPage extends ConsumerWidget {
  WebviewPage({Key? key, required this.initialUrl}) : super(key: key);

  final String initialUrl;

  final isLoadingProvider = StateProvider.autoDispose<bool>((ref) => true);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> stack = [
      WebView(
        backgroundColor: Colors.white,
        initialUrl: initialUrl,
        javascriptMode: JavascriptMode.unrestricted,
        navigationDelegate: (request) {
          if (!request.url.startsWith("https://shop.gekirock.com/cart/") && !request.url.startsWith("https://shop.gekirock.com/shopping/") ) {
            ref.read(showCartPageProvider.notifier).state = false;
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
        onPageFinished: (_) {
          ref
              .read(isLoadingProvider.notifier)
              .state = false;
        },
      ),
    ];
    if (ref.watch(isLoadingProvider)) {
      stack.add(const Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Assets.images.logoIcon.image(height: 51, width: 114),
      ),
      body: Stack(children: stack,)
    );
  }
}
