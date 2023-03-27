// import 'package:class_practice/my_class/products_list.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
//
// class TypeAheadScreen extends StatefulWidget {
//   const TypeAheadScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TypeAheadScreen> createState() => _TypeAheadScreenState();
// }
//
// class _TypeAheadScreenState extends State<TypeAheadScreen> {
//   // List<String> subjects = <String>[
//   //   "science",
//   //   "math",
//   //   "s.st",
//   //   "sanskrit",
//   //   "hindi",
//   //   "history",
//   //   "geography"
//   // ];
//   List subject = [];
//   TextEditingController _typeAheadController = TextEditingController();
//
//   @override
//   void initState() {
//     // subject = subjects.where((subjects) => subjects.startsWith('h')).toList();
//
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: TypeAheadField(
//                 textFieldConfiguration: TextFieldConfiguration(
//
//                     controller: _typeAheadController,
//                     autofocus: false,
//                     style: DefaultTextStyle.of(context)
//                         .style
//                         .copyWith(fontStyle: FontStyle.italic),
//                     decoration: const InputDecoration(border: OutlineInputBorder(),
//                       contentPadding: EdgeInsets.zero,
//                       hintText: 'category', hintStyle: TextStyle(
//                         color: Colors.green,fontSize: 14,
//                         fontStyle: FontStyle.italic,
//                       ),
//                     )),
//                 suggestionsCallback: (pattern) async {
//                   return category.where((category) => category.name.startsWith(pattern)).toList();
//                 },
//                 itemBuilder: (context, suggestion) {
//                   return ListTile(
//                     title: Text(suggestion.name),
//                   );
//                 },
//                 onSuggestionSelected: (suggestion) {
//                   // Navigator.of(context).push(MaterialPageRoute(
//                   //     builder: (context) => ProductPage(product: suggestion)
//                   // )
//                   //);
//                 },
//               ),
//             ),
//           )),
//     );
//   }
// }
