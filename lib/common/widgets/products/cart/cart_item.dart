import 'package:ecommerce/common/widgets/images/rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)? TColors.darkerGrey: TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleVerifiedIcon(title: 'Nike'),
              const TProductTitleText(title: 'black Sports Shoes', maxLines: 1),
              /// Attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: ' Green', style: Theme.of(context).textTheme.bodyLarge),

                        TextSpan(text: ' Size', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: ' UK 08', style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
