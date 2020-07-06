package com.samsung.android.shealthmonitor.receiver

import android.content.Intent
import android.content.BroadcastReceiver
import android.content.Context
import com.samsung.android.shealthmonitor.controller.ControlManager
import com.samsung.android.shealthmonitor.util.LOG

class DateTimeChangeReceiver : BroadcastReceiver() {

    private val TAG = LOG.prefix + "DateTimeChangeReceiver"

    override fun onReceive(context: Context, intent: Intent) {
        val action = intent.action

        if (action == Intent.ACTION_TIME_CHANGED ||
                action == Intent.ACTION_TIMEZONE_CHANGED ||
                action == Intent.ACTION_DATE_CHANGED) {

            LOG.d(TAG, "BR : $action")

            val broadcastList = ControlManager.getInstance().dateChangeBroadcastReceivers
            for (broadcastReceiver in broadcastList) {
                broadcastReceiver.onReceive(context, intent)
            }
        }
    }
}