import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/product_controller.dart';
import '../text_utils.dart';

class ClothesInfo extends StatelessWidget {
  final String title;
  final int productId;
  late final double rate;
  final String description;
  ClothesInfo({
    required this.title,
    required this.productId,
    required this.rate,
    required this.description,
    Key? key,
  }) : super(key: key);

  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ),
              Obx(
                () => Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Get.isDarkMode
                        ? Colors.white.withOpacity(0.9)
                        : Colors.grey.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: () {
                      controller.manageFavourites(productId);
                    },
                    child: controller.isFavourites(productId)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          )
                        : const Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                            size: 20,
                          ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextUtils(
                fontsize: 14,
                fontWeight: FontWeight.bold,
                text: "$rate",
                color: Get.isDarkMode ? Colors.white : Colors.black,
                underline: TextDecoration.none,
              ),
              const SizedBox(
                width: 8,
              ),
//               RatingBar.builder(
//   initialRating: rate,
//   minRating: 1,
//   direction: Axis.horizontal,
//   allowHalfRating: true,
//   itemCount: 5,
//   itemSize: 20,
//   itemPadding: EdgeInsets.zero,
//   itemBuilder: (context, _) => const Icon(
//     Icons.star,
//     size: 20,
//     color: Colors.grey,
//   ),
//   onRatingUpdate: (rating) {
//     // يمكنك تنفيذ أي شيء تريده عند تحديث التقييم هنا
//     // مثلاً، تحديث قيمة التقييم في المتغير الذي يتحكم به في التطبيق
//     rate = rating;
//   },
//   unratedColor: Colors.grey,
//   glowColor: Colors.orangeAccent,
// ),

            ],
          ),
          const SizedBox(
            height: 20,
          ),
          // ReadMoreText(
          //   description,
          //   trimLines: 3,
          //   textAlign: TextAlign.justify,
          //   trimMode: TrimMode.Line,
          //   trimCollapsedText: " Show More ",
          //   trimExpandedText: " Show Less ",
          //   lessStyle: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     color: Get.isDarkMode ? pinkClr : mainColor,
          //   ),
          //   moreStyle: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     color: Get.isDarkMode ? pinkClr : mainColor,
          //   ),
          //   style: TextStyle(
          //     fontSize: 16,
          //     height: 2,
          //     color: Get.isDarkMode ? Colors.white : Colors.black,
          //   ),
          // ),
        ],
      ),
    );
  }
}
