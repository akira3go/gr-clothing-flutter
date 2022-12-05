import 'dart:convert';

import 'package:gr_clothing_flutter/preferences.dart';
import 'package:http/http.dart' as http;

class AcceptUrlsModel {
  static Future<void> fetchAcceptUrls() async {
    final uri = Uri.https('shop.gekirock.com', 'domain_define.json');
    final response = await http.read(uri);
    final List<dynamic> urlPaths = json.decode(response);
    final List<String> items = [];
    for (var element in urlPaths) {
      items.add(element as String);
    }
    await preferences.updateAcceptUrlPaths(items);
  }
}