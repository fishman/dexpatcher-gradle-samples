package com.samsung.android.shealthmonitor.bp.util

import android.content.Intent
import android.content.pm.PackageManager
import android.support.v4.app.FragmentActivity
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.ui.dialog.listener.OnPositiveButtonClickListener
import com.samsung.android.shealthmonitor.util.LOG


object DialogUtils {

    val TAG = LOG.prefix + "DialogUtils"
    val NO_CONNECTION_POPUP_TAG = "NO_CONNECTION_POPUP_TAG"

    fun showNoConnectionDialog(activity : FragmentActivity, okListener : OnPositiveButtonClickListener? = null) {
        if (!activity.isFinishing && !activity.isDestroyed) {

            val builder = SAlertDlgFragment.Builder(R.string.cannot_connect_with_your_watch,
                    SAlertDlgFragment.TYPE_P_BUTTON)
            builder.setContentText(R.string.cannot_connect_with_your_watch_desc)

            val found = activity.supportFragmentManager.findFragmentByTag(NO_CONNECTION_POPUP_TAG)
            if (found !=null) {
                (found as SAlertDlgFragment).dismiss()
            }

            builder.setPositiveButtonClickListener(R.string.baseui_button_ok) {
                launchWearableManager(activity)
                if (okListener != null) {
                    okListener.onClick(it)
                }
            }

            builder.setPositiveButtonTextColor(activity.resources.getColor(R.color.dialog_color, null))
            builder.setCanceledOnTouchOutside(false)
            try {
                builder.build().show(activity.supportFragmentManager, NO_CONNECTION_POPUP_TAG)
                LOG.d(TAG, "Show $NO_CONNECTION_POPUP_TAG")
            } catch (e: Exception) {
                LOG.d(TAG, "Error in $NO_CONNECTION_POPUP_TAG")
            }
        }
    }

    fun launchWearableManager(activity : FragmentActivity) {
        val manager = activity.packageManager
        val wearableManagerPackage = "com.samsung.android.app.watchmanager"
        try {
            val info = manager.getApplicationInfo(wearableManagerPackage, 0)
            if (info.enabled) {
                val intent = manager.getLaunchIntentForPackage(wearableManagerPackage)
                if (intent == null) {
                    LOG.i(TAG, "launchWearableManager() : intent is null.")
                    return
                }
                intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
                activity.startActivity(intent)
            } else {
                LOG.i(TAG, "launchWearableManager() : ${activity.packageName} is not enabled.")
            }
        } catch (e: PackageManager.NameNotFoundException) {
            LOG.e(TAG, "launchWearableManager() : NameNotFoundException is occurred")
        }
    }

    fun removeFragmentDialog(activity : FragmentActivity, vararg tags : String ) {
        if (!activity.isFinishing && !activity.isDestroyed) {
            for (tag in tags) {
                val found = activity.supportFragmentManager.findFragmentByTag(tag)
                if (found !=null) {
                    (found as SAlertDlgFragment).dismiss()
                }
            }
        }
    }
}