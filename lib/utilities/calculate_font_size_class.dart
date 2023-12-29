import 'package:flutter/material.dart';
import 'dart:io';

class CalculateFontSizeClass {
  double calculateFontSize(BuildContext context, double scaleFactor) {
    double adjustedFontSize = 10.0;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    debugPrint(
        'in calculateFontSize: orientation = $orientation\nheight = $height\nwidth = $width');

    if (Platform.isIOS) {
      // iPhones: 320 w x 568 h
      // iPhone SE 1st gen
      // iPhone 5C
      // iPhone 5S
      // iPhone 5
      double iPhone320x568portrait = 10.0;
      double iPhone320x568landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        adjustedFontSize = iPhone320x568portrait * scaleFactor;
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        adjustedFontSize = iPhone320x568landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 375 w x 667 h
      // iPhone SE 3rd gen
      // iPhone SE 2nd gen
      // iPhone 8
      // iPhone 7
      // iPhone 6s
      // iPhone 6
      double iPhone375x667portrait = 10.0;
      double iPhone375x667landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 375 && height == 667)) {
        adjustedFontSize = iPhone375x667portrait * scaleFactor;
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width == 667 && height == 375)) {
        adjustedFontSize = iPhone375x667landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 414 w x 736 h
      // iPhone 8 Plus
      // iPhone 7 Plus
      // iPhone 6s Plus
      // iPhone 6 Plus
      double iPhone414x736portrait = 10.0;
      double iPhone414x736landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 414 && height == 736)) {
        adjustedFontSize = iPhone414x736portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 736 && height == 414)) {
        adjustedFontSize = iPhone414x736landscape * scaleFactor;
        return adjustedFontSize;
      }
      //  iPhones: 375 w x 812 h
      // iPhone 13 mini
      // iPhone 12 mini
      // iPhone 11 Pro
      // iPhone XS
      // iPhone X
      double iPhone375x812portrait = 10.0;
      double iPhone375x812landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 375 && height == 812)) {
        adjustedFontSize = iPhone375x812portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 812 && height == 375)) {
        adjustedFontSize = iPhone375x812landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 390 w x 844 h
      // iPhone 14
      // iPhone 13
      // iPhone 13 Pro
      // iPhone 12
      // iPhone 12 Pro
      double iPhone390x844portrait = 10.0;
      double iPhone390x844landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 390) && (height == 844))) {
        adjustedFontSize = iPhone390x844portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 844) && (height == 390))) {
        adjustedFontSize = iPhone390x844landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 393 w x 852 h
      // iPhone 15 Pro
      // iPhone 15
      // iPhone 14 Pro
      double iPhone393x852portrait = 10.0;
      double iPhone393x852landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 393) && (height == 852))) {
        debugPrint(
            'in else portrait: iPhones: 430 w x 932 h\nadjustedFontSize = $adjustedFontSize');
        adjustedFontSize = iPhone393x852portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 852) && (height == 393))) {
        debugPrint('in else landscape: iPhones: 852 w x 393 h');
        adjustedFontSize = iPhone393x852landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 414 w x 896 h
      // iPhone 11 Pro Max
      // iPhone 11
      // iPhone XR
      // iPhone XS Max
      double iPhone414x896portrait = 10.0;
      double iPhone414x896landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 414) && (height == 896))) {
        adjustedFontSize = iPhone414x896portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 896) && (height == 414))) {
        adjustedFontSize = iPhone414x896landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 428 w x 926 h
      // iPhone 14 Plus
      // iPhone 13 Pro Max
      // iPhone 12 Pro Max
      double iPhone428x926portrait = 10.0;
      double iPhone428x926landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 428) && (height == 926))) {
        adjustedFontSize = iPhone428x926portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 926) && (height == 428))) {
        adjustedFontSize = iPhone428x926landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 430 w x 932 h
      // iPhone 15 Pro Max
      // iPhone 15 Plus
      // iPhone 14 Pro Max
      double iPhone430x932portrait = 10.0;
      double iPhone430x932landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 430) && (height == 932))) {
        adjustedFontSize = iPhone430x932portrait * scaleFactor;
        debugPrint('in iPhone430x932portrait adjustedFontSize =$adjustedFontSize');
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 932) && (height == 430))) {
        adjustedFontSize = iPhone430x932landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 768 w x 1024  h
      // iPad Mini (5th gen)
      // iPad 6th gen
      // iPad 5th gen
      // iPad Pro (1st gen 9.7”)
      // iPad mini 4
      // iPad Air 2
      // iPad mini 3
      // iPad mini 2
      // iPad Air
      // iPad 4th gen
      // iPad mini
      // iPad 3rd gen
      // iPad 2
      // iPad 1st gen
      double iPad768x1024portrait = 10.0;
      double iPad768x1024landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 768) && (height == 1024))) {
        adjustedFontSize = iPad768x1024portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1024) && (height == 768))) {
        adjustedFontSize = iPad768x1024landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 810 w x 1080  h
      // iPad 9th gen
      // iPad 8th gen
      // iPad 7th gen
      double iPad810x1080portrait = 10.0;
      double iPad810x1080landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 810) && (height == 1080))) {
        adjustedFontSize = iPad810x1080portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1080) && (height == 810))) {
        adjustedFontSize = iPad810x1080landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 834 w x 1112  h
      // iPad Air (3rd gen)
      // iPad Pro (2nd gen 10.5")
      double iPad834x1112portrait = 10.0;
      double iPad834x1112landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1112))) {
        adjustedFontSize = iPad834x1112portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1112) && (height == 834))) {
        adjustedFontSize = iPad834x1112landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 744.0 w x 1113.0  h
      // iPad Mini (6th gen)
      double iPad744x1113portrait = 10.0;
      double iPad744x1113landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 744.0) && (height == 1133.0))) {
        adjustedFontSize = iPad744x1113portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) &&
          ((width == 1133.0) && (height == 744.0))) {
        adjustedFontSize = iPad744x1113landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 820 w x 1180  h
      // iPad 10th gen
      // iPad Air (5th gen)
      // iPad Air (4th gen)
      double iPad820x1180portrait = 10.0;
      double iPad820x1180landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 820) && (height == 1180))) {
        adjustedFontSize = iPad820x1180portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1180) && (height == 820))) {
        adjustedFontSize = iPad820x1180landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 834 w x 1194  h
      // iPad Pro (6th gen 11")
      // iPad Pro (5th gen 11")
      // iPad Pro (4th gen 11")
      // iPad Pro (3rd gen 11")
      double iPad834x1194portrait = 10.0;
      double iPad834x1194landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1194))) {
        adjustedFontSize = iPad834x1194portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1194) && (height == 834))) {
        adjustedFontSize = iPad834x1194landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 1024 w x 1366  h
      // iPad Pro (6th gen 12.9")
      // iPad Pro (5th gen 12.9")
      // iPad Pro (4th gen 12.9")
      // iPad Pro (3rd gen 12.9")
      // iPad Pro (2nd gen 12.9")
      //  iPad Pro (1st gen 12.9")
      double iPad1024x1366portrait = 10.0;
      double iPad1024x1366landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 1024) && (height == 1366))) {
        adjustedFontSize = iPad1024x1366portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1366) && (height == 1024))) {
        adjustedFontSize = iPad1024x1366landscape * scaleFactor;
        return adjustedFontSize;
      } else {
        // default font size
        return adjustedFontSize = 12.0;
      }
    }
    if (Platform.isAndroid) {
      // 480 x 800
      // Samsung Galaxy S
      // Samsung Galaxy S Plus
      // Samsung Nexus S
      // Samsung Galaxy SII
      double android480x800portrait = 10.0;
      double android480x800landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        adjustedFontSize = android480x800portrait * scaleFactor;
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        adjustedFontSize = android480x800landscape * scaleFactor;
        return adjustedFontSize;
      }
      // 480 x 854
      // Motorola Droid
      double android480x854portrait = 10.0;
      double android480x854landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        adjustedFontSize = android480x854portrait * scaleFactor;
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        adjustedFontSize = android480x854landscape * scaleFactor;
        return adjustedFontSize;
      }
    }
    // default font size
    return adjustedFontSize = 12.0;
  }
}
