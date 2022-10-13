import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

double translateX (double X, InputImageRotation rotation, final Size size, final Size absoluteImageSize){
  switch (rotation) {
    case InputImageRotation.rotation90deg:
      return X*size.width/(Platform.isIOS ? absoluteImageSize.width : absoluteImageSize.height);
    case InputImageRotation.rotation270deg:
      return size.width-X* size.width/(Platform.isIOS ? absoluteImageSize.width : absoluteImageSize.height);
    default:
     return X*size.width/absoluteImageSize.width;
  }
}

double translateY(double Y, InputImageRotation rotation, final Size size, final Size absoluteImageSize){
  switch (rotation) {
    case InputImageRotation.rotation90deg:
    case InputImageRotation.rotation270deg:
      return Y*size.height/(Platform.isIOS ? absoluteImageSize.height : absoluteImageSize.width);
    default:
      return Y*size.height/absoluteImageSize.height;
  }
}