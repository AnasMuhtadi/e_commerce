import 'package:flutter/material.dart';

class AppColors {
  static Color mainColorLite = const Color.fromRGBO(246, 121, 82, 0.1);
  static Color mainColor = const Color.fromRGBO(246, 121, 82, 1);
  static Color white = const Color.fromRGBO(255, 255, 255, 1.0);
  static Color whiteLite = const Color.fromRGBO(255, 255, 255, .5);
  static Color black = const Color.fromRGBO(0, 0, 0, 1.0);
  static Color grey = const Color.fromRGBO(0, 0, 0, 0.5);
  static Color backegrondItem = const Color.fromRGBO(51, 53, 71, 0.06);
  static Color liteGreen = const Color.fromRGBO(135, 199, 185, 0.1);
  static Color scaffoldColor = const Color.fromRGBO(251, 251, 253, 1);
  static Color greyLite = const Color.fromRGBO(0, 0, 0, 0.1);
  static Color green = const Color.fromRGBO(57, 206, 138, 1);

}

class AppIcons {
  static String pathIcon = "assets/icons";

  static String filter = "$pathIcon/filter.svg";
  static String threePoints = "$pathIcon/threePoints.svg";
  static String applePay = "$pathIcon/applePay.svg";
  static String mastercard = "$pathIcon/mastercard.svg";
  static String payPal = "$pathIcon/payPal.svg";
  static String visa = "$pathIcon/visa.svg";
  static String check = "$pathIcon/check.svg";
  static String edit = "$pathIcon/edit.svg";
  static String add = "$pathIcon/add.svg";
  static String subtract = "$pathIcon/subtract.svg";
  static String arrow = "$pathIcon/arrow.svg";
  static String empty = "$pathIcon/empty.svg";
  static String item1 = "$pathIcon/item1.svg";
  static String item2 = "$pathIcon/item2.svg";
  static String item3 = "$pathIcon/item3.svg";
  static String item4 = "$pathIcon/item4.svg";
  static String item5 = "$pathIcon/item5.svg";
  static String item6 = "$pathIcon/item6.svg";
  static String redHeart = "$pathIcon/redHeart.svg";
  static String redHeartOutline = "$pathIcon/redHeartOutline.svg";
  static String menu = "$pathIcon/menu.svg";
  static String logo = "$pathIcon/logo.svg";
  static String profileFild = "$pathIcon/profile.svg";
  static String lock = "$pathIcon/lock.svg";
  static String messeage = "$pathIcon/messeage.svg";
  static String notification = "$pathIcon/notification.svg";
  static String search = "$pathIcon/search.svg";
  static String pants = "$pathIcon/pants.svg";
  static String drees = "$pathIcon/drees.svg";
  static String shirt = "$pathIcon/shirt.svg";
  static String tshirt = "$pathIcon/tshirt.svg";
  static String home = "$pathIcon/icon_BNB/home.svg";
  static String buy = "$pathIcon/icon_BNB/buy.svg";
  static String heart = "$pathIcon/icon_BNB/heart_outline.svg";
  static String profile = "$pathIcon/icon_BNB/profile.svg";
  static String homeOutline = "$pathIcon/icon_BNB/home_outline.svg";
  static String buyOutline = "$pathIcon/icon_BNB/buy_outline.svg";
  static String heartOutline = "$pathIcon/icon_BNB/heart_outline.svg";
  static String profileOutline = "$pathIcon/icon_BNB/profile_outline.svg";
}

class AppImage {
  static String pathImage = "assets/images";

  static String item1 = "$pathImage/item1.png";
  static String item2 = "$pathImage/item2.png";
  static String item3 = "$pathImage/item3.png";
  static String item4 = "$pathImage/item4.png";
  static String item5 = "$pathImage/item5.png";
  static String item6 = "$pathImage/item6.png";
  static String itemProduct = "$pathImage/itemProduct.png";


  static String on1 = "$pathImage/on1.png";
  static String on2 = "$pathImage/on2.png";
  static String on3 = "$pathImage/on3.png";
  static String feasbook = "$pathImage/feasbook.png";
  static String google = "$pathImage/google.png";
  static String alexPerson = "$pathImage/alex.png";
  static String backegraound = "$pathImage/backegraound.png";

}

class AppText{


}


class AppLists{
  static List<int> currentColor = [0, 1, 2, 3];
  static List<Color> productColor = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue
  ];
  static List onbordingLibel = ["Choose Product", "Make Payment", "Get Your Order"];
  static List onbordingDescription = [
    "A product is the item offered for sale.\nA product can be a service or an item. It can be\nphysical or in virtual or cyber form",
    "Payment is the transfer of money\nservices in exchange product or Payments typically\n made terms agreed ",
    "Business or commerce an order is a stated\nintention either spoken to engage in a commercial\n transaction specific products "
  ];
  static List onbordingImages = [AppImage.on1, AppImage.on2, AppImage.on3,];
  static List paymentImage = [AppIcons.applePay, AppIcons.visa,AppIcons.mastercard,AppIcons.payPal,];

}