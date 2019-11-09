import 'package:bot_toast/bot_toast.dart';

class ToastUtils{
  static showTopToast(String text){
    if(text != null){
      BotToast.showSimpleNotification(title: text);
    }
  }

  static showToast(String text){
    if(text != null){
      BotToast.showText(text: text);
    }
  }
}