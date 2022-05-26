// import 'package:flutter/material.dart';

// import '../../core/extensions/context_extension.dart';

// //
// //

// class TextCaption extends StatelessWidget {
//   final String text;
//   final Color? color;
//   final int? maxLines;
//   final bool isOverFlowed;

//   const TextCaption({
//     Key? key,
//     required this.text,
//     this.color,
//     this.maxLines,
//     this.isOverFlowed = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: context.theme.textTheme.caption!.copyWith(
//         color: color,
//       ),
//       maxLines: maxLines,
//       overflow: isOverFlowed ? TextOverflow.ellipsis : null,
//     );
//   }
// }

// //
// //

// class TextSubtitle1 extends StatelessWidget {
//   final String text;

//   const TextSubtitle1({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: context.theme.textTheme.subtitle1,
//     );
//   }
// }

// //
// //

// class TextTitleSmall extends StatelessWidget {
//   final String text;

//   const TextTitleSmall({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: context.theme.textTheme.titleSmall,
//     );
//   }
// }

// //
// //

// class TextTitleMedium extends StatelessWidget {
//   final String text;

//   const TextTitleMedium({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: context.theme.textTheme.titleMedium,
//     );
//   }
// }

// //
// //

// class TextTitleLarge extends StatelessWidget {
//   final String text;

//   const TextTitleLarge({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: context.theme.textTheme.titleLarge,
//     );
//   }
// }

// //
// //

// class TextSubtitle2 extends StatelessWidget {
//   final String text;

//   const TextSubtitle2({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: context.theme.textTheme.subtitle2,
//     );
//   }
// }

// //
// //

// class TextBody1 extends StatelessWidget {
//   final String text;
//   final int? maxLines;
//   final Color? color;
//   final bool isOverFlowed;

//   const TextBody1(
//       {Key? key,
//       required this.text,
//       this.maxLines,
//       this.color,
//       this.isOverFlowed = false})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: context.theme.textTheme.bodyText1!.copyWith(
//         color: color,
//       ),
//       maxLines: maxLines,
//       overflow: isOverFlowed ? TextOverflow.ellipsis : null,
//     );
//   }
// }

// //
// //

// class TextBody2 extends StatelessWidget {
//   final String text;
//   final Color? color;

//   const TextBody2({
//     Key? key,
//     required this.text,
//     this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: context.theme.textTheme.bodyText2!.copyWith(
//         color: color,
//       ),
//     );
//   }
// }
