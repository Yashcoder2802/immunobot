// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:share/share.dart';
// import 'package:vaccinemgmt/sharecertiutils.dart';
// import 'package:vaccinemgmt/share_button_widget.dart';
// //import 'package:vaccinemgmt/textfield_widget.dart';

// class ShareFilesWidget extends StatefulWidget {
//   @override
//   _ShareFilesWidgetState createState() => _ShareFilesWidgetState();
// }

// class _ShareFilesWidgetState extends State<ShareFilesWidget> {
//   final controller = TextEditingController();

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => Padding(
//         padding: EdgeInsets.all(24),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.network(
//                   "https://immunoapi.radiantdaman.com/generateCerti?name=girish&task=sova%20main"),
//               TextfieldWidget(controller: controller),
//               SizedBox(height: 32),
//               ShareButtonWidget(
//                 onClicked: () async {
//                   if (controller.text.isEmpty) {
//                     Utils.showSnackbar(context, message: 'Enter a caption!');
//                   } else {
//                     final filePaths = await pickFile();

//                     Share.shareFiles(filePaths, text: controller.text);
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       );

//   Future<List<String>> pickFile() async {
//     final result = await FilePicker.platform.pickFiles(allowMultiple: true);

//     return result == null ? <String>[] : result.paths;
//   }
// }
