import 'package:ecommerce/features/shop/screens/cart/cart.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed, this.countBgColor, this.counterTextColor,
  });

  final Color? iconColor, countBgColor, counterTextColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: countBgColor ?? (dark ? TColors.white : TColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: dark ? TColors.grey : TColors.black),),
                // child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white),)
            ),
          ),
        )
      ],
    );
  }
}
