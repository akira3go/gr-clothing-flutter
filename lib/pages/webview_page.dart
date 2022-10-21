import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class WebviewPage extends StatelessWidget {
  WebviewPage({Key? key, required this.initialUrl}) : super(key: key);

  final String initialUrl;
  WebViewController? controller;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller?.canGoBack() ?? false) {
          controller!.goBack();
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: ColorName.skyBlue,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: WebView(
          userAgent: "GEKIROCK_CLOTHING_FLUTTER_APPLICATION",
          backgroundColor: ColorName.skyBlue,
          javascriptMode: JavascriptMode.unrestricted,
          navigationDelegate: (request) async {
            if (request.url == "https://shop.gekirock.com/") {
              controller!.loadUrl(
                initialUrl,
                headers: {
                  "x-api-key": "k2UPNGT4",
                },
              );
              return NavigationDecision.prevent;
            }
            if (_isCanNavigate(request.url)) {
              return NavigationDecision.navigate;
            }
            final uri = Uri.parse(request.url);
            if (await canLaunchUrl(uri)) {
              launchUrl(uri);
            }
            return NavigationDecision.prevent;
          },
          onWebViewCreated: (controller) {
            this.controller = controller;
            controller.loadUrl(
              initialUrl,
              headers: {
                "x-api-key": "k2UPNGT4",
              },
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: Opacity(
          opacity: 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: ColorName.skyBlue,
                onPressed: () async {
                  if (controller != null) {
                    controller!.reload();
                  }
                },
                child: const Icon(
                  Icons.refresh,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              if (Platform.isIOS)
                FloatingActionButton(
                  backgroundColor: ColorName.skyBlue,
                  onPressed: () async {
                    if (await controller?.canGoBack() ?? false) {
                      controller!.goBack();
                    }
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isCanNavigate(String url) {
    const gekirock = "://gekirock.com";
    const skream = "://skream.jp";
    const tokyo = "://69hf.tokyo";
    const barRockaholic = "://bar-rockaholic.jp";
    const liveholic = "://liveholic.jp";
    const youtube = "://youtube.com";
    const twitter = "://twitter.com";
    const facebook = "://facebook.com";
    const instagram = "://instagram.com";
    const rockFashion = "://rock-fashion.jugem.jp";
    const shopGekirock = "://shop.gekirock.com";
    const mobileTwitter = "://mobile.twitter.com";

    return url.contains(gekirock) || url.contains(skream) ||
        url.contains(tokyo) ||
        url.contains(barRockaholic) || url.contains(liveholic) ||
        url.contains(youtube) || url.contains(twitter) ||
        url.contains(facebook) || url.contains(instagram) ||
        url.contains(rockFashion) || url.contains(shopGekirock) ||
        url.contains(mobileTwitter);
  }
}
