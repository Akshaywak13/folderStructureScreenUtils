
// import 'package:baap_erp_app/constants/app_colors.dart';
// import 'package:baap_erp_app/constants/app_enum.dart';
// import 'package:baap_erp_app/widgets/icon_widget.dart';
// import 'package:baap_erp_app/widgets/text_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DropDownFormWidget extends StatelessWidget {
//   const DropDownFormWidget({
//     super.key,
//     required this.context,
//     required this.list,
//     required this.selectedValue,
//     required this.onChanged,
//     this.readOnly = false,
//     this.isRounded = true,
//   });

//   final BuildContext context;
//   final List<String> list;
//   final String? selectedValue;
//   final Function onChanged;
//   final bool readOnly;
//   final bool isRounded;

//   @override
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.dropdownColor,
//         borderRadius: isRounded ? BorderRadius.circular(5.r) : null,
//       ),
//       padding: EdgeInsets.only(top: 8.h, bottom: 10.h, left: 15.w),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton<String>(
//           value: selectedValue != null
//               ? (list.isNotEmpty ? list[0] : selectedValue)
//               : selectedValue,
//           isExpanded: true,
//           isDense: true,
//           dropdownColor: AppColors.dropdownColor,
//           icon: Padding(
//               padding: EdgeInsets.only(
//                 right: 11.w,
//               ),
//               child: IconWidget(
//                 data: AppIcons.arrowDownwardIcon.name,
//                 height: 6.h,
//                 width: 10.w,
//                 color: AppColors.textColor,
//               )
//               ),
//           items: list.map((String value) {
//             return DropdownMenuItem(
//               value: value,
//               child: TextWidget(
//                 text: value.toString(),
//                 color: AppColors.textColor,
//                 fontSize: 17.sp,
//               ),
//             );
//           }).toList(),
//           selectedItemBuilder: (BuildContext context) {
//             return list.map<Widget>(
//               (String value) {
//                 return TextWidget(
//                     text: value.toString(),
//                     fontSize: 18.sp,
//                     color: AppColors.textColor);
//               },
//             ).toList();
//           },
//           onChanged: (value) {
//             onChanged(value);
//           },
//         ),
//       ),
//     );
//   }
// }


// import 'package:baap_erp_app/constants/app_colors.dart';
// import 'package:baap_erp_app/widgets/icon_widget.dart';
// import 'package:baap_erp_app/widgets/text_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DropDownFormWidget extends StatelessWidget {
//   const DropDownFormWidget({
//     Key? key,
//     required this.context,
//     required this.list,
//     required this.selectedValue,
//     required this.onChanged,
//     this.readOnly = false,
//     this.isRounded = true,
//   }) : super(key: key);

//   final BuildContext context;
//   final List<String> list;
//   final String? selectedValue;
//   final ValueChanged<String?> onChanged; // Changed Function to ValueChanged<String?>
//   final bool readOnly;
//   final bool isRounded;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.dropdownColor,
//         borderRadius: isRounded ? BorderRadius.circular(5.r) : null,
//       ),
//       padding: EdgeInsets.only(top: 8.h, bottom: 10.h, left: 15.w),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton<String>(
//           value: selectedValue,
//           isExpanded: true,
//           isDense: true,
//           dropdownColor: AppColors.dropdownColor,
//           icon: Padding(
//             padding: EdgeInsets.only(right: 11.w),
//             child: IconWidget(
//               data: AppIcons.arrowDownwardIcon.name,
//               height: 6.h,
//               width: 10.w,
//               color: AppColors.textColor,
//             ),
//           ),
//           items: list.map((String value) {
//             return DropdownMenuItem(
//               value: value,
//               child: TextWidget(
//                 text: value,
//                 color: AppColors.textColor,
//                 fontSize: 17.sp,
//               ),
//             );
//           }).toList(),
//           selectedItemBuilder: (BuildContext context) {
//             return list.map<Widget>((String value) {
//               return TextWidget(
//                 text: value,
//                 fontSize: 18.sp,
//                 color: AppColors.textColor,
//               );
//             }).toList();
//           },
//           onChanged: readOnly ? null : onChanged,
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folderstructureutils/constants/app_colors.dart';
import 'package:folderstructureutils/constants/app_enum.dart';
import 'package:folderstructureutils/widgets/icon_widget.dart';
import 'package:folderstructureutils/widgets/text_widget.dart';

class DropDownFormWidget extends StatelessWidget {
  const DropDownFormWidget({
    Key? key,
    required this.context,
    required this.list,
    required this.selectedValue,
    required this.onChanged,
    this.readOnly = false,
    this.isRounded = true,
  }) : super(key: key);

  final BuildContext context;
  final List<String> list;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final bool readOnly;
  final bool isRounded;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.dropdownColor,
        borderRadius: isRounded ? BorderRadius.circular(5.r) : null,
      ),
      padding: EdgeInsets.only(top: 8.h, bottom: 10.h, left: 15.w),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          isExpanded: true,
          isDense: true,
          dropdownColor: AppColors.dropdownColor,
          icon: Padding(
            padding: EdgeInsets.only(right: 11.w),
            child: IconWidget(
              data: AppIcons.arrowDownwardIcon.name,
              height: 6.h,
              width: 10.w,
              color: AppColors.textColor,
            ),
          ),
          items: list.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: TextWidget(
                text: value,
                color: AppColors.textColor,
                fontSize: 17.sp,
              ),
            );
          }).toList(),
          selectedItemBuilder: (BuildContext context) {
            return list.map<Widget>((String value) {
              return TextWidget(
                text: value,
                fontSize: 18.sp,
                color: AppColors.textColor,
              );
            }).toList();
          },
          onChanged: readOnly ? null : onChanged,
        ),
      ),
    );
  }
}
