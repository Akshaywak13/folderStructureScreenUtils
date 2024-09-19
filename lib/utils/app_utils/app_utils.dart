

import 'package:folderstructureutils/constants/app_enum.dart';
import 'package:folderstructureutils/constants/app_images.dart';

String fetchIconFromAsset(assetName) {
   if (assetName == AppIcons.logo.name) {
    return AppImages.logo;
 }  else if (assetName == AppIcons.backarrowIcon.name) {
    return AppImages.backarrowIcon;
  } else if (assetName == AppIcons.arrowDownwardIcon.name) {
    return AppImages.downwardArrowIcon;
  } 
  return '';
}
