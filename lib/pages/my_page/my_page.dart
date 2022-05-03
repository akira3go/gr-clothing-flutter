import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyPage extends ConsumerWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(child: Text("マイページ"),);
  }
}