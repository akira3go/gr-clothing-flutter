import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/accept_url_model.dart';
import 'package:gr_clothing_flutter/const.dart';
import 'package:gr_clothing_flutter/firebase_options.dart';
import 'package:gr_clothing_flutter/gen/fonts.gen.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/preferences.dart';
import 'package:gr_clothing_flutter/webview_page.dart';
import 'package:gr_clothing_flutter/webview_state.dart';
import 'package:uni_links/uni_links.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
final webviewToggleProvider = StateProvider<bool>((ref) {
  return true;
});

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Preferences.createInstance();
  AcceptUrlsModel.fetchAcceptUrls();
  runApp(ProviderScope(child: GRClothingApp()));
}

class GRClothingApp extends ConsumerWidget with WidgetsBindingObserver {
  GRClothingApp({Key? key}) : super(key: key);

  StreamSubscription? _sub;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        AcceptUrlsModel.fetchAcceptUrls();
        break;
      default:
        break;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    final messaging = FirebaseMessaging.instance;
    // 通知タップでアプリ起動したら
    messaging.getInitialMessage().then((message) {
      ref.read(webviewToggleProvider.notifier).state =
          !ref.read(webviewToggleProvider);
      final link = message?.data["link"] as String? ?? "";
      if (link.isNotEmpty) {
        ref.read(webviewStateProvider.notifier).state = WebViewState(link);
      }
    });
    messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      ref.read(webviewToggleProvider.notifier).state =
          !ref.read(webviewToggleProvider);
      final link = message.data["link"] as String? ?? "";
      if (link.isNotEmpty) {
        ref.read(webviewStateProvider.notifier).state = WebViewState(link);
      }
    });

    if (Platform.isAndroid) {
      var androidSetting =
          const AndroidInitializationSettings('@mipmap/ic_launcher');
      final settings = InitializationSettings(android: androidSetting);
      flutterLocalNotificationsPlugin.initialize(
        settings,
        onDidReceiveNotificationResponse: (res) {
          if (res.payload != null) {
            ref.read(webviewToggleProvider.notifier).state =
                !ref.read(webviewToggleProvider);
            if (res.payload!.isNotEmpty) {
              ref.read(webviewStateProvider.notifier).state =
                  WebViewState(res.payload!);
            }
          }
        },
      );
      flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestPermission();
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print("フォアグラウンドでメッセージを受け取りました");
        RemoteNotification? notification = message.notification;
        AndroidNotification? android = message.notification?.android;
        if (notification != null && android != null) {
          // フォアグラウンドで通知を受け取った場合、通知を作成して表示する
          flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            const NotificationDetails(
              // 通知channelを設定する
              android: AndroidNotificationDetails(
                'like_channel', // channelId
                'GEKIROCK CLOTHING', // channelName
                importance: Importance.max,
                priority: Priority.high,
                icon: 'launch_background',
              ),
            ),
            payload: message.data["link"] as String?,
          );
        }
      });
    } else {
      messaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    _setLinkStreamListener(ref);

    return Consumer(builder: (_, widgetRef, __) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: FontFamily.hiragino,
          appBarTheme: const AppBarTheme(
            backgroundColor: ColorName.skyBlue,
            shadowColor: Colors.transparent,
            elevation: 0.0,
            systemOverlayStyle: SystemUiOverlayStyle(
              systemNavigationBarIconBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
            ),
          ),
          buttonTheme: const ButtonThemeData(padding: EdgeInsets.zero),
        ),
        home: _homeWidget,
        debugShowCheckedModeBanner: false,
      );
    });
  }

  Widget get _homeWidget {
    return FutureBuilder(
      future: FirebaseMessaging.instance.getToken(),
      builder: (_, AsyncSnapshot<String?> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        print("token");
        print(snapshot.data ?? "");
        return Consumer(
          builder: (_, ref, __) {
            final url =
                "${ref.read(webviewStateProvider).url}?token=${snapshot.data ?? ""}";
            return WebviewPage(initialUrl: url);
          },
        );
      },
    );
  }

  void _setLinkStreamListener(WidgetRef ref) {
    _sub = linkStream.listen((link) {
      if (link == null) return;
      final Uri uri;
      try {
        uri = Uri.parse(link);
      } catch (_) {
        return;
      }
      final webViewUrl = uri.queryParameters['url'];
      final fragment = uri.queryParameters['fragment'];
      if (webViewUrl == null) return;
      ref.read(webviewStateProvider.notifier).state = WebViewState(
        webViewUrl,
        fragment: fragment,
      );
    });
  }
}
