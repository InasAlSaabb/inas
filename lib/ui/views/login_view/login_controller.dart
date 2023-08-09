import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/string_util.dart';
class LoginController extends GetxController{

   String? isPassword(value){
  if (value!.isEmpty) {
  return 'أدخل حقل رمز الدخول';
  }
  if (!StringUtil.isPassword(value)) {
  return 'تأكد ان رمز الدخول صحيح';
  }
//  return null;


  }

   String? isName(value){
   if (value!.isEmpty) {
   return 'أدخل حقل رمز الدخول';
   }
   if (!StringUtil.isPassword(value)) {
   return 'تأكد ان رمز الدخول صحيح';
   }
   return null;


   }


}