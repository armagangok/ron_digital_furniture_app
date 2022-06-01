// import 'package:flutter/material.dart';

// class GlobalTextField extends StatelessWidget {
//   final Function? onTap;
//   final double? textFieldH;
//   final String? label;
//   final TextEditingController? controller;
//   final String? labelText;
//   final Icon? icon;

//   const GlobalTextField({
//     Key? key,
//     this.onTap,
//     this.textFieldH,
//     this.label,
//     this.controller,
//     this.labelText,
//     this.icon,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: textFieldH ?? 30,
//       child: TextFormField(
//         controller: controller,
//         decoration: InputDecoration(
//           labelText: label,
//           suffixIcon: InkWell(
//             child: icon,
//             onTap: () => onTap!(),
//             splashColor: null,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/init/view/base/base_stateless.dart';

class GeneralTextField extends BaseStateless {
  GeneralTextField({Key? key}) : super();

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    return SizedBox(
      height: h * 0.05,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          filled: true,
          fillColor: const Color(0xff767680).withOpacity(0.12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.black,
            size: 16,
          ),
        ),
      ),
    );
  }
}
