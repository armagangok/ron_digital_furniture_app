import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({
    Key? key,
    required this.color,
    required this.filledColor,
  }) : super(key: key);

  final Color color;
  final Color filledColor;

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return 
      
       SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) => buildRatingWidget(index)),
        ),
      );
    
  }

  buildRatingWidget(int index) {
    return InkWell(
      child: index < _rating ? getIcon(isFilled: true) : getIcon(),
      onTap: () => setState(() => _rating = index + 1),
    );
  }

  getIcon({bool isFilled = false}) {
    return isFilled
        ? Icon(
            CupertinoIcons.star_fill,
            size: 30,
            color: widget.filledColor,
          )
        : Icon(
            CupertinoIcons.star,
            size: 30,
            color: widget.color,
          );
  }
}
