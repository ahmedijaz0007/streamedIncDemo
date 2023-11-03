import 'package:demo/utilities/message_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class StoryListItem extends StatelessWidget {
  final String imageName;
  final String label;
  const StoryListItem(
      {super.key, required this.imageName, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: const Size(50, 50),
              painter: HollowCirclePainter(),
            ),
            SizedBox(
                height: 49,
                width: 49,
                child: imageName == "notification.svg"?
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Utils.getIcon(imageName),
                        Positioned(
                            left: 26,
                            top: 14,
                            child: Utils.getIcon("badge.svg"))
                      ],
                    ):Utils.getIcon(imageName))
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}

class HollowCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Define a gradient shader
    final Shader gradientShader = const LinearGradient(
      colors: [blueGradientStart, blueGradientEnd],
    ).createShader(Rect.fromCircle(center: center, radius: radius));

    // Use ShaderMask to apply the gradient to the border
    paint.shader = gradientShader;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
