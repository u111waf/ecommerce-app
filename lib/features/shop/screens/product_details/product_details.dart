import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Product Image Slider
            TProductImageSlider(),

            /// -- Product Details
            Padding(padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                /// -- Ratings & Share
                TRatingAndShare(),

                /// -- Price, Title, Stock & Brand
                TProductMetaData(),
                /// -- Attributes
                TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections),
                /// -- Checkout Button
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                const SizedBox(height: TSizes.spaceBtwSections),
                /// -- Description
                const TSectionHeading(title: 'Description', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems,),
                ReadMoreText(
                  'This is a product description of nike sleeveless vest, Ter are more things that can be added but we decided to stop here',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Less',
                  moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),
                /// -- Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TSectionHeading(title: "Reviews(190)", showActionButton: false,),
                    IconButton(icon: const Icon(Iconsax.arrow_right_3, size:18), onPressed: () => Get.to(() => const TProductReviewsScreen())),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}



