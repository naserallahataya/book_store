import 'package:book_store/conestent.dart';
import 'package:book_store/core/utils/assets_data.dart';
import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/preserntation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testImage))),
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    'Harry Potter and the Goblet of Fire',
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kgtSectraFine),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text('j.k Rowling', style: Styles.textStyle14),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 \$ ',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    BookRating()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
