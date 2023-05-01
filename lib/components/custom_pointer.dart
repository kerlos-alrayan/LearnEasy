// EmptyContainer
import 'dart:math';

import 'package:flutter/material.dart';

class EmptyContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final redCircle = Paint()
      ..color = Color(0xff4E74F9)
      ..style = PaintingStyle.stroke;
    final arcRect = Rect.fromCircle(
        center: size.bottomCenter(Offset.zero), radius: size.height);
    canvas.drawArc(arcRect, 0, -pi, false, redCircle);
  }

  @override
  bool shouldRepaint(EmptyContainer oldDelegate) => false;
}

// FillContainer
class FillContainer extends CustomPainter {
  Color color;
  FillContainer({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final redCircle = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    final arcRect = Rect.fromCircle(
        center: size.bottomCenter(Offset.zero), radius: size.height);
    canvas.drawArc(arcRect, 0, -pi, false, redCircle);
  }

  @override
  bool shouldRepaint(FillContainer oldDelegate) => false;
}
// Column(
//   children: [
//     Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(topRight: Radius.circular(200), ),
//         color: Colors.blue[300],
//       ),
//       width: 70,
//       height: 70,
//     ),
//     Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(bottomRight: Radius.circular(200),),
//         color: Colors.blue[300],
//       ),
//       width: 70,
//       height: 70,
//     ),
//   ],
// ),
// Container(
//                 //   decoration: BoxDecoration(
//                 //     borderRadius: BorderRadius.only(topRight: Radius.circular(200), ),
//                 //     color: Colors.blue[300],
//                 //   ),
//                 //   width: 70,
//                 //   height: 70,
//                 // ),
//                 // Container(
//                 //   decoration: BoxDecoration(
//                 //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(200),),
//                 //     color: Colors.blue[300],
//                 //   ),
//                 //   width: 70,
//                 //   height: 70,
//                 // ),