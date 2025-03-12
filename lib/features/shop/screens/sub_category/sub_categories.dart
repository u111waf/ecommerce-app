import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/rounded_image.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(width: double.infinity, imageUrl: TImages.promoBanner4, applyImageRadius: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Sub-categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports shirts', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const TProductCardHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
