import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/circular_image.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// -- Body
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(children: [
          /// -- Profile Picture
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const TCircularImage(
                    image: TImages.user, width: 80, height: 80),
                TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture')),
              ],
            ),
          ),

          /// -- Details
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          const Divider(),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// --  Heading Profile Info
          const TSectionHeading(
              title: 'Profile Information', showActionButton: false),
          const SizedBox(height: TSizes.spaceBtwItems),

          TProfileMenu(
              onPressed: () {}, title: 'Name', value: 'The Click Path'),
          TProfileMenu(
            onPressed: () {},
            title: 'Username',
            value: 'the_click_path',
          ),

          const SizedBox(height: TSizes.spaceBtwItems),
          const Divider(),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// -- Heading Personal Info
          const TSectionHeading(
              title: 'Personal Information', showActionButton: false),
          const SizedBox(height: TSizes.spaceBtwItems),

          TProfileMenu(
            onPressed: () {},
            title: 'User ID',
            value: '001',
            icon: Iconsax.copy,
          ),
          TProfileMenu(
              onPressed: () {}, title: 'E-mail', value: 'support@theclickpath.com'),
          TProfileMenu(
              onPressed: () {},
              title: 'Phone Number',
              value: '+234-908-3545-884'),
          TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
          TProfileMenu(
              onPressed: () {}, title: 'Date of Birth', value: '24 Dec 1999'),
          const Divider(),
          const SizedBox(height: TSizes.spaceBtwItems),

          Center(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Close Account',
                  style: TextStyle(color: Colors.red),
                )),
          )
        ]),
      )),
    );
  }
}
