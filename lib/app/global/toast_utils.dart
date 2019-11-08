import 'package:bot_toast/bot_toast.dart';

class ToastUtils{
  static showToast(String text){
    if(text != null){
      BotToast.showSimpleNotification(title: text);
    }
  }
}