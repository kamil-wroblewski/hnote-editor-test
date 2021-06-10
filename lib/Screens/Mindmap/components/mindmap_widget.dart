// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:projekt/Screens/Mindmap/components/node.dart';
//
// class MindMapWidget extends StatefulWidget {
//   @override
//   _MindMapWidgetState createState() => _MindMapWidgetState();
// }
//
// class _MindMapWidgetState extends State<MindMapWidget> {
//   FocusNode _node;
//   bool _focused = false;
//   final _controller = TextEditingController();
//   @override
//   void init() {}
//   void _handleFocusChange() {}
//   @override
//   void dispose() {}
//
//   final _textStyle = TextStyle(fontSize: 30, color: Colors.black);
//   Node tree = Node("Start");
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         GestureDetector(
//           behavior: HitTestBehavior.opaque;
//           onTapUp: handleOnTapUp,
//           onTap: handleOnTap,
//           onDoubleTapDown: handleonDoubleTapDown,
//           onDoubleTap: handleOnDoubleTap,
//           onLongPressEnd: handleLongPressEnd,
//           child: CustomPaint(
//             child: Container(
//               painter: MindMapPainter(tree),
//             ),
//           ),
//         ),
//         SizedBox(height: 100),
//         Center(
//           child: SizedBox(
//             width: 300,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [_buildTextField(),],
//             )
//           ),
//         )
//       ],
//     ),);
//   }
//
// void handleOnTapUp(TapUpDetails details)
// {
//   print(object);   // ???????
//
//   final n= depthFirstSearch(tree, Node m)
//   {
//     final inside = m.rect.contains(details.localPosition);
//     print("[$inside] rect-> ${m.rect} pos-> ${details.localPosition}");
//     return inside;
//
//   }
//   if(n!=null)
//   {
//     setState((){
//       n.children.add(Node(""));
//     });
//   }
//   else{
//     print("Not tapped inside a node")
//   }
// }
//
// void toggleEditMode(String s)
// {
//   if(_focused)
//   {
//     node.unfocus();
//   }
//   else{
//     _controller.text =s;
//     _node.requestFocus();
//   }
//   setState(() {
//     _focused=!_focused;
//   });
// }
//
//   _buildTextField() {
// if(_focused)
// {
//   return TextField(
//     controller: _controller,
//     onSubmitted: handleTextFieldInput,
//     focusNode: _node,
//     style: _textStyle,
//     decoration: InputDecoration(
//       filled: true,
//       fillColor: Colors.white,
//       contentPadding: EdgeInsets.only(left: 5, bottom: 5, top: 5,),
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.white,),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       enabledBorder: UnderlineInputBorder(
//         borderSide: BorderSide(color: Colors.white),
//         borderRadius: BorderRadius.circular(10),
//       )
//     ),
//   );
// }
// else{
//   return Container();
// }
// }
//     Node _selectedNode;
//     void handleTextFieldInput(String value)
//     {
//       if(_selectedNode != null)
//       {
//         _selectedNode.value= value.trim();
//         _selectedNode = null;
//       }
//       toggleEditMode("");
//     }
//
//
//
//
//
//
// } // główny nawias
//
// class TapUpDetails
// {
//   TapUpDetails({
//     required this.kind,
//     this.globalPosition = Offset.zero,
//     Offset? localPosition,
//   }) : assert(globalPosition!=null),
//   localPosition = localPosition ?? globalPosition;
//
//   final Offset globalPosition;
//   final Offset localPosition;
//   final PointerDeviceKind kind;
// }