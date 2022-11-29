import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/const.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class WebviewPage extends StatelessWidget {
  WebviewPage({Key? key, required this.initialUrl}) : super(key: key);

  final String initialUrl;
  WebViewController? controller;
  final refreshController = RefreshController();

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
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Platform.isIOS ? _iosWidget : _androidWidget,
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
        floatingActionButton: Platform.isIOS ? Opacity(
          opacity: 0.7,
          child: FloatingActionButton(
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
        ) : null,
      ),
    );
  }

  Widget get _iosWidget {
    return SmartRefresher(
      onRefresh: () async {
        await controller?.reload();
        refreshController.refreshCompleted();
      },
      controller: refreshController,
      header: Platform.isIOS
          ? CustomHeader(
        builder: (_, __) {
          return const CupertinoActivityIndicator(
            color: Colors.white,
          );
        },
      )
          : const MaterialClassicHeader(),
      child: _customWebView(),
    );
  }

  Widget get _androidWidget {
    return Stack(alignment: AlignmentDirectional.topCenter, children: [
      _customWebView(),
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        height: 80,
        child: IgnorePointer(
          ignoring: true,
          child: SmartRefresher(
            onRefresh: () async {
              await controller?.reload();
              Future.delayed(const Duration(milliseconds: 500)).then((_) {
                refreshController.refreshCompleted();
              });
            },
            controller: refreshController,
            header: Platform.isIOS
                ? CustomHeader(
              builder: (_, __) {
                return const CupertinoActivityIndicator(
                  color: Colors.white,
                );
              },
            )
                : const MaterialClassicHeader(),
            child: Container(
              height: 0,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget _customWebView() {
    final gesture = <Factory<AllowVerticalDragGestureRecognizer>>{};
    gesture.add(Factory<AllowVerticalDragGestureRecognizer>(
          () => Platform.isIOS ? _iosGesture : _androidGesture,
    ));

    return WebView(
      userAgent: Const.userAgent,
      backgroundColor: Colors.black,
      javascriptMode: JavascriptMode.unrestricted,
      javascriptChannels: {
        JavascriptChannel(
          name: 'flutterAppGekirockClothing',
          onMessageReceived: (JavascriptMessage message) async {
            Map<String, dynamic> messageMap = json.decode(message.message);
            final urlScheme = messageMap["url_scheme"] as String;
            final url = messageMap["url"] as String;
            if (!await launchUrlString(urlScheme)) {
              await launchUrlString(url);
            }
          },
        ),
      },
      navigationDelegate: (request) async {
        if (request.url == Const.initialUrl) {
          reload();
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
      gestureRecognizers: gesture,
      onWebViewCreated: (controller) {
        this.controller = controller;
        reload();
      },
    );
  }

  AllowVerticalDragGestureRecognizer get _iosGesture {
    final gesture = AllowVerticalDragGestureRecognizer();
    bool refreshFlag = false;
    gesture.onDown = (_) {
      controller!.getScrollY().then(
            (value) {
          if (value == 0) {
            refreshFlag = true;
          }
        },
      );
    };
    gesture.onEnd = (_) {
      if (refreshFlag) {
        refreshFlag = false;
        controller!.getScrollY().then((value) {
          if (value < 0) {
            refreshController.requestRefresh();
          }
        });
      }
    };
    return gesture;
  }

  AllowVerticalDragGestureRecognizer get _androidGesture {
    final gesture = AllowVerticalDragGestureRecognizer();
    bool refreshFlag = false;
    gesture.onStart = (startDetails) {
      controller!.getScrollY().then(
            (value) {
          if (value == 0) {
            refreshFlag = true;
          }
        },
      );
    };
    gesture.onEnd = (DragEndDetails dragEndDetails) {
      if (refreshFlag) {
        refreshFlag = false;
        controller!.getScrollY().then((value) {
          if (dragEndDetails.primaryVelocity == 0) {
            return;
          }
          if (value == 0) {
            refreshController.requestRefresh();
          }
        });
      }
    };
    return gesture;
  }

  void reload() {
    controller!.loadUrl(
      initialUrl,
      headers: {
        "x-api-key": Const.xApiKey,
      },
    );
  }

  bool _isCanNavigate(String url) {
    const gekirock = "gekirock.com";
    const skream = "skream.jp";
    const tokyo = "69hf.tokyo";
    const barRockaholic = "bar-rockaholic.jp";
    const liveholic = "liveholic.jp";
    const youtube = "youtube.com";
    const twitter = "twitter.com";
    const facebook = "facebook.com";
    const instagram = "instagram.com";
    const rockFashion = "rock-fashion.jugem.jp";
    const shopGekirock = "shop.gekirock.com";
    const mobileTwitter = "mobile.twitter.com";
    // 下記はトップ画面読み込み時にロードしてしまうurl
    const platformTwitter = "platform.twitter.com";
    const wwwFacebook = "www.facebook.com";
    const webFacebook = "web.facebook.com";
    const syndication = "syndication.twitter.com";
    const aboutBlank = "about:blank";

    return url.contains(gekirock) ||
        url.contains(skream) ||
        url.contains(tokyo) ||
        url.contains(barRockaholic) ||
        url.contains(liveholic) ||
        url.contains(youtube) ||
        url.contains(twitter) ||
        url.contains(facebook) ||
        url.contains(instagram) ||
        url.contains(rockFashion) ||
        url.contains(shopGekirock) ||
        url.contains(mobileTwitter) ||
        url.contains(platformTwitter) ||
        url.contains(wwwFacebook) ||
        url.contains(webFacebook) ||
        url.contains(syndication) ||
        url.contains(aboutBlank);
  }
}

class AllowVerticalDragGestureRecognizer extends VerticalDragGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}
