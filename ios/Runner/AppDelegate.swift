import UIKit
import Flutter
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    // APNsより登録デバイストークンを取得し、コンソールに出力する（デバッグ用）
    override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
      print("APNs token retrieved: \(deviceToken)")

      //　メソッド実装入れ替えをしない場合、APNs発行のデバイストークンとFCM発行デバイストークンを明示的にマッピングする必要があります。
       Messaging.messaging().apnsToken = deviceToken
    }
}
