import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
            return NavigationDecision.navigate;
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
}
