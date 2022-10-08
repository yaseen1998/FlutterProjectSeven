import 'package:flutter/material.dart';
import 'package:project/models/models.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: reviews.length,
        itemBuilder: (BuildContext context, int index) {
          Review review = reviews[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 43, 38, 61),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          review.name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          review.date,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 188, 73, 255),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      review.description,
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 5,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
