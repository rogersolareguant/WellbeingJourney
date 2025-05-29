

enum WellbeingDimension { autonomy, competence, relatedness }

class WellbeingQuestion {
  final String text;
  final String recommendation;
  final WellbeingDimension dimension;
  final bool isReversed;

  const WellbeingQuestion({
    required this.text,
    required this.recommendation,
    required this.dimension,
    this.isReversed = false,
  });
}
