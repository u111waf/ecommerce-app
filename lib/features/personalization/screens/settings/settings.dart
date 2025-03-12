import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/shop/screens/order/order.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// User Profile Card
                  TUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    subtitle: 'Set shopping delivery address',
                    title: 'My Addresses',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  const TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      subtitle: 'Add, remove products and save to checkout',
                      title: 'My Cart'),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    subtitle: 'In-progress and completed orders',
                    title: 'My Orders',
                    onTap: () => Get.to(() => const OrderScreen( )),
                  ),
                  const TSettingsMenuTile(
                      icon: Iconsax.bank,
                      subtitle: 'Withdraw balance to registered bank account',
                      title: 'Bank account'),
                  const TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      subtitle: 'List all of the discounted coupons',
                      title: 'My Coupons'),
                  const TSettingsMenuTile(
                      icon: Iconsax.notification,
                      subtitle: 'Set any kind of notification message',
                      title: 'Notifications'),
                  const TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      subtitle: 'Manage data usage and connected accounts',
                      title: 'Account Privacy'),

                  /// -- App settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      subtitle: 'Upload data to your cloud firebase',
                      title: 'Load Data'),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Get recommendations based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// -- Logout Button
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('logout')),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections * 2.5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
