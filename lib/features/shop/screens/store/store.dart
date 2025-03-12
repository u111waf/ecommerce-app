import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// Appbar -- Tutorial
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [TCartCounterIcon(onPressed: () {})],
        ),
        // we are going to use nested scrollview
        // for both vertical and horizontal scrolls
        /// Header  -- Tutorial
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search Bar
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchContainer(
                        text: "Search In Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// -- Featured Brands
                      TSectionHeading(
                          title: "Featured Brands", onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwSections / 1.5),

                      // TGridLayout(
                      //     itemCount: 4,
                      //     mainAxisExtent: 80,
                      //     itemBuilder: (_, index) {
                      //       return TBrandCard(
                      //         showBorder: true, title: 'Nike',
                      //       );
                      //     })
                      TGridLayout(
                        itemCount: 4, // Number of products
                        mainAxisExtent: 80, // Height of each item
                        itemBuilder: (_, index) {
                          // List of product titles
                          final productTitles = ['Nike', 'Adidas', 'Puma', 'Reebok'];

                          return TBrandCard(

                            showBorder: true,
                            title: productTitles[index],
                            // Access the title using index
                          );
                        },
                      )

                    ],
                  ),
                ),

                /// Tab -- Tutorial
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },

          /// Body
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
