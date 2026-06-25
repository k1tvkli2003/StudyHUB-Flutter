package com.studyhub.app

import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.SharedPreferences
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetProvider

class StudyHubWidgetProvider : HomeWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences,
    ) {
        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.studyhub_widget).apply {
                setOnClickPendingIntent(
                    R.id.studyhub_widget_container,
                    HomeWidgetLaunchIntent.getActivity(context, MainActivity::class.java),
                )
                setTextViewText(
                    R.id.studyhub_widget_title,
                    widgetData.getString("studyhub_widget_title", "StudyHUB"),
                )
                setTextViewText(
                    R.id.studyhub_widget_message,
                    widgetData.getString("studyhub_widget_message", "Import PDFs and review due cards."),
                )
                setTextViewText(
                    R.id.studyhub_widget_footer,
                    widgetData.getString("studyhub_widget_footer", "Open today"),
                )
            }
            appWidgetManager.updateAppWidget(widgetId, views)
        }
    }
}
