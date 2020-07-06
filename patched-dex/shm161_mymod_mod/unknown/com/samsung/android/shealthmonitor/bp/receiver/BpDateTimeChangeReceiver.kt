package com.samsung.android.shealthmonitor.bp.receiver

import android.content.Intent
import android.content.BroadcastReceiver
import android.content.Context
import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController
import com.samsung.android.shealthmonitor.controller.ControlManager

class BpDateTimeChangeReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        BpReCalibrationController.updateBpRecalibrationSchedule()
        BpReCalibrationController.updateBpCalibrationNoti()
    }
}