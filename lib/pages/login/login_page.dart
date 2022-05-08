import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ログイン"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "アカウントをお持ちの方",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Text(
                "会員の方は、登録時に入力されたメールアドレスとパスワードでログインしてください。",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.lightGray),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "メールアドレス",
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                    ),
                    Container(color: ColorName.lightGray, height: 1),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "パスワード",
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.only(top: 10, bottom: 5),
                  ),
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        color: Colors.blue,
                        child: const Icon(
                          Icons.question_mark_rounded,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 3),
                    const Text("パスワードを忘れた方はこちら"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 5),
                  ),
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        color: Colors.blue,
                        child: const Icon(
                          Icons.question_mark_rounded,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 3),
                    const Text("メールアドレスを忘れた方はこちら"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.login_rounded),
                    SizedBox(width: 5),
                    Text("ログイン"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "アカウント作成",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Text(
                "会員登録をすると便利なMyページをご利用いただけます。",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 5),
              const Text(
                "また、ログインするだけで、毎回お名前や住所などを入力することなくスムーズにお買い物をお楽しみいただけます。",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.create_rounded),
                    SizedBox(width: 5),
                    Text("会員登録"),
                  ],
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
