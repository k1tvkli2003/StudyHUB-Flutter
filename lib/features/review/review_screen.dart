import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/database/database_provider.dart';
import '../../data/models/study_models.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

final _reviewCardsProvider = StreamProvider(
  (ref) => ref.watch(appDatabaseProvider).watchDueFlashcards(),
);

class ReviewScreen extends ConsumerWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cards = ref.watch(_reviewCardsProvider).value ?? const [];
    return ScreenFrame(
      children: [
        PremiumHeader(
          title: 'Review',
          subtitle: '${cards.length} due cards · SM-2 scheduling preserved',
        ),
        if (cards.isEmpty)
          const StudyCard(
            child: Text(
              'No cards are due. Add lesson flashcards or generate review material from a PDF section.',
            ),
          )
        else
          StudyCard(
            accent: Theme.of(context).colorScheme.secondary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cards.first.question,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 12),
                Text(cards.first.answer),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  children: [
                    for (final grade in [1, 3, 4, 5])
                      OutlinedButton(
                        onPressed: () async {
                          final card = cards.first;
                          final next = SrsCalculator.calculate(
                            FlashcardRecord(
                              id: card.id,
                              pdfId: card.pdfId,
                              question: card.question,
                              answer: card.answer,
                              type: card.type,
                              options: card.options,
                              correctOptionIndex: card.correctOptionIndex,
                              topic: card.topic,
                              intervalDays: card.intervalDays,
                              easeFactor: card.easeFactor,
                              nextReviewAt: card.nextReviewAt,
                              successiveCorrect: card.successiveCorrect,
                              wrongCount: card.wrongCount,
                              sourceKey: card.sourceKey,
                            ),
                            grade,
                          );
                          await ref
                              .read(appDatabaseProvider)
                              .updateFlashcardReview(
                                id: card.id,
                                intervalDays: next.intervalDays,
                                easeFactor: next.easeFactor,
                                nextReviewAt: next.nextReviewAt,
                                successiveCorrect: next.successiveCorrect,
                                wrongCount: next.wrongCount,
                              );
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Scheduled next review in ${next.intervalDays} day(s).',
                              ),
                            ),
                          );
                        },
                        child: Text(switch (grade) {
                          1 => 'Again',
                          3 => 'Hard',
                          4 => 'Good',
                          _ => 'Easy',
                        }),
                      ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
