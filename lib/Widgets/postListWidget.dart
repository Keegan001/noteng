import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:noteng/constants/colors.dart';
import 'package:noteng/data/Posts/postModel.dart';
import 'package:noteng/pages/Posts/post_details.dart';

class PostListWidget extends StatelessWidget {
  const PostListWidget(
    this.pLM, {
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final Posts? pLM;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => PostDetails());
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 9),
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: secondaryAccentColor.withAlpha(100),
          // border: Border.all(
          //   color: secondaryColor.withOpacity(0.3),
          //   width: 1.0,
          // ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pLM!.title!,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Flexible(
                  child: Text(
                    DateFormat('dd MMMM yyyy, HH:mm')
                        .format(DateTime.parse(pLM!.dateUpdated!)),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: secondaryColor,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    pLM!.description!,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                if (pLM!.image != null)
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(pLM!.image!),
                          fit: BoxFit.cover,
                        )),
                  ),
              ],
            ),
            const Expanded(
              child: SizedBox(
                height: 0,
              ),
            ),
            const Divider(
              color: secondaryColor,
              thickness: 0.5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => onPressed ?? null,
                      child: Icon(
                        // pLM!.isLiked ? Icons.favorite : Icons.favorite_outline,
                        // color: pLM!.isLiked ? Colors.red : secondaryColor,
                        Icons.favorite,
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      "${pLM!.likes!} Likes",
                      style: const TextStyle(
                        color: secondaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  pLM!.subtype!,
                  style: const TextStyle(
                    color: secondaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
