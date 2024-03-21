import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Searchbar
                  TSearchContainer(
                    text: 'Search in store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    TGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const TProductCardVertical(),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
