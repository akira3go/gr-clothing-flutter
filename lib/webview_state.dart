import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/const.dart';

final webviewStateProvider = StateProvider<WebViewState>((ref) {
  return const WebViewState(Const.initialUrl);
});

class WebViewState {
  const WebViewState(this.url, {this.fragment});

  final String url;
  final String? fragment;
}
