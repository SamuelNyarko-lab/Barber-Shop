import 'package:flutter/widgets.dart';

class Utils {


  getDeviceWidth(BuildContext context){

   return MediaQuery.of(context).size.width;
  
  }getDeviceHeight(BuildContext context){

return MediaQuery.of(context).size.height;
  }

  
}
