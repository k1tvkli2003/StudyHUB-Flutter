import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_widget/home_widget.dart';

import '../../data/database/app_database.dart';
import '../../data/database/database_provider.dart';

final homeWidgetSyncProvider = StreamProvider<void>((ref) async* {
  final db = ref.watch(appDatabaseProvider);
  const service = StudyHubHomeWidget();
  while (true) {
    await service.updateFromDatabase(db);
    yield null;
    await Future<void>.delayed(const Duration(minutes: 15));
  }
});

class StudyHubHomeWidget {
  const StudyHubHomeWidget();

  Future<void> updateFromDatabase(AppDatabase db) async {
    try {
      final pdfCount = (await db.listPdfs()).length;
      final dueCards =
          await (db.select(db.flashcards)..where(
                (row) => row.nextReviewAt.isSmallerOrEqualValue(
                  DateTime.now().millisecondsSinceEpoch,
                ),
              ))
              .get();
      final activity = await db.select(db.studyActivity).get();
      final minutes = activity.fold<int>(
        0,
        (sum, item) => sum + item.minutesStudied,
      );
      final pages = activity.fold<int>(0, (sum, item) => sum + item.pagesRead);
      final cards = activity.fold<int>(
        0,
        (sum, item) => sum + item.cardsReviewed,
      );

      await HomeWidget.saveWidgetData<String>(
        'studyhub_widget_title',
        'StudyHUB',
      );
      await HomeWidget.saveWidgetData<String>(
        'studyhub_widget_message',
        '$pdfCount PDFs · ${dueCards.length} due cards',
      );
      await HomeWidget.saveWidgetData<String>(
        'studyhub_widget_footer',
        '$minutes min · $pages pages · $cards reviews',
      );
      await HomeWidget.updateWidget(
        qualifiedAndroidName: 'com.studyhub.app.StudyHubWidgetProvider',
        iOSName: 'StudyHubWidget',
      );
    } catch (_) {
      // Desktop platforms do not expose a home screen widget host; keep startup quiet there.
    }
  }
}
