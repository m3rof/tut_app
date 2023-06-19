
import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/fonts_manager.dart';

TextStyle getTextStyle(Color color,FontWeight fontWeight,double fontSize ){
  return TextStyle(color:color ,fontSize:fontSize ,fontWeight:fontWeight ,fontFamily:FontConstants.fontFamily);
}

TextStyle getBoldStyle({required Color color,double fontSize=FontSize.s12} ){
  return getTextStyle(color, FontWeightManager.bold, fontSize);
}
TextStyle getSemiBoldStyle({required Color color,double fontSize=FontSize.s12} ){
  return getTextStyle(color, FontWeightManager.semiBold, fontSize);
}
TextStyle getMediumStyle({required Color color,double fontSize=FontSize.s12} ){
  return getTextStyle(color, FontWeightManager.medium, fontSize);
}
TextStyle getRegularStyle({required Color color,double fontSize=FontSize.s12} ){
  return getTextStyle(color, FontWeightManager.regular, fontSize);
}
TextStyle getLightStyle({required Color color,double fontSize=FontSize.s12} ){
  return getTextStyle(color, FontWeightManager.light, fontSize);
}

