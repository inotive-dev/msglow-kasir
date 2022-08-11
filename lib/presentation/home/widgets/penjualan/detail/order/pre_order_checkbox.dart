import 'package:flutter/material.dart';

import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/widgets/my_text.dart';

class PreOrderCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;

  const PreOrderCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Sizes.height19),
      child: Row(
        children: [
          SizedBox(
            height: Sizes.height18,
            width: Sizes.width18,
            child: Transform.scale(
              scale: 0.5,
              child: Checkbox(
                activeColor: ColorPalettes.bgGoldMenuItem,
                tristate: false,
                value: value,
                splashRadius: Sizes.width18,
                onChanged: onChanged,
              ),
            ),
          ),
          SizedBox(
            width: Sizes.width4,
          ),
          MyText(
            text: 'Pre-order',
            fontSize: Sizes.sp11,
            fontWeight: FontWeight.w500,
            textType: TextType.bodyText1,
          ),
        ],
      ),
    );
  }
}
