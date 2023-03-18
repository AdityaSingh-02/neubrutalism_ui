import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:neubrutalism_ui/src/widgets/buttons/neu_icon_button.dart';

import 'widgets/containers/neu_card.dart';

export 'widgets/buttons/neu_text_button.dart';

mixin Neubrutalism {
  //% Adding the Button Class.
  static NeuTextButton neuTextButton({
    Text title = const Text("Hello"),
    Color buttonColor = const Color(0xFF378106),
    Color? shadowColor = const Color(0xff1f1f1f),
    Color? borderColor = const Color(0xff1f1f1f),
    required double buttonHeight,
    required double buttonWidth,
    required double borderWidth,
    required GestureTapCallback onPressed,
  }) {
    return NeuTextButton(
      title,
      buttonColor,
      buttonHeight,
      buttonWidth,
      shadowColor,
      borderColor,
      borderWidth,
      onPressed,
    );
  }

  static NeuCard neuImageCard({
    required Image cardImage,
    required EdgeInsets paddingData,
    required double cardHeight,
    required double cardWidth,
    required double cardBorderWidth,
    required double shadowBlurRadius,
    Offset blurGeometry = const Offset(4, 4),
    Color cardColor = const Color.fromARGB(255, 55, 129, 6),
    Color? shadowColor = const Color(0xff1f1f1f),
    Color? cardBorderColor = const Color(0xff1f1f1f),
    Color imageBorderColor = const Color(0xff1f1f1f),
    double imageBorderWidth = 0,
    double shadowBlur = 0,
  }) {
    return NeuCard(
        cardColor,
        cardHeight,
        cardWidth,
        shadowColor,
        cardBorderColor,
        cardImage,
        paddingData,
        imageBorderColor,
        cardBorderWidth,
        shadowBlur,
        blurGeometry,
        shadowBlurRadius,
        imageBorderWidth);
  }

  static NeuIconButton neuIconButton({
    required Icon icon,
    required double buttonHeight,
    required double buttonWidth,
    required double borderWidth,
    required GestureTapCallback onPressed,
    required BorderRadius borderRadius,
    required Color buttonColor,
    required EdgeInsets paddingData,
    double shadowBlurRadius = 0,
    Offset shadowGeometry = const Offset(4, 4),
    Color? shadowColor = const Color(0xff1f1f1f),
    Color? borderColor = const Color(0xff1f1f1f),
  }) {
    return NeuIconButton(
        icon,
        buttonColor,
        buttonHeight,
        buttonWidth,
        shadowColor,
        borderColor,
        borderWidth,
        () {},
        borderRadius,
        paddingData,
        shadowGeometry,
        shadowBlurRadius);
  }
}
