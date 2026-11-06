import 'dart:math' as math;
import 'package:flutter/material.dart';

class SavingAnalyticsCard extends StatelessWidget {
  final List<double> monthlySavings;

  const SavingAnalyticsCard({
    super.key,
    this.monthlySavings = const [1200, 950, 650, 850, 1450, 1100],
  });

  final List<String> months = const ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];

  String formatMoney(double amount) {
    return '\$${amount.toStringAsFixed(0).replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ',')}';
  }

  @override
  Widget build(BuildContext context) {
    final average = monthlySavings.isEmpty
        ? 0.0
        : monthlySavings.reduce((a, b) => a + b) / monthlySavings.length;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Saving Analytics',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF222222),
            ),
          ),

          const SizedBox(height: 6),

          RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 12, color: Colors.grey),
              children: [
                const TextSpan(text: 'Average per month '),
                TextSpan(
                  text: formatMoney(average),
                  style: const TextStyle(
                    color: Color(0xFF222222),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            height: 175,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return CustomPaint(
                  size: Size(constraints.maxWidth, constraints.maxHeight),
                  painter: SavingChartPainter(values: monthlySavings),
                );
              },
            ),
          ),

          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              math.min(months.length, monthlySavings.length),
              (index) => Text(
                months[index],
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SavingChartPainter extends CustomPainter {
  final List<double> values;

  SavingChartPainter({required this.values});

  @override
  void paint(Canvas canvas, Size size) {
    if (values.isEmpty) return;

    final maxValue = values.reduce(math.max) * 1.15;

    // Horizontal grid lines
    final gridPaint = Paint()
      ..color = const Color(0xFFF2F2F2)
      ..strokeWidth = 1;

    for (int i = 0; i < 4; i++) {
      final y = i * size.height / 4;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }

    final slotWidth = size.width / values.length;
    final barWidth = slotWidth * 0.55;

    for (int i = 0; i < values.length; i++) {
      final barHeight = (values[i] / maxValue) * (size.height - 8);

      final left = i * slotWidth + (slotWidth - barWidth) / 2;

      final top = size.height - barHeight;

      final rect = Rect.fromLTWH(left, top, barWidth, barHeight);

      final radius = Radius.circular(barWidth / 2);

      final barPath = Path()..addRRect(RRect.fromRectAndRadius(rect, radius));

      // Dark rounded bar
      final barPaint = Paint()..color = const Color(0xFF252525);

      canvas.drawPath(barPath, barPaint);

      // Diagonal stripes inside the bar
      canvas.save();
      canvas.clipPath(barPath);

      final stripePaint = Paint()
        ..color = Colors.white.withOpacity(0.12)
        ..strokeWidth = 1;

      for (
        double x = left - barHeight;
        x < left + barWidth + barHeight;
        x += 7
      ) {
        canvas.drawLine(
          Offset(x, size.height),
          Offset(x + barHeight, top),
          stripePaint,
        );
      }

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant SavingChartPainter oldDelegate) {
    return oldDelegate.values != values;
  }
}
