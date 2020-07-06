package com.samsung.android.shealthmonitor.ecg.util;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.samsung.android.shealthmonitor.bp.R;
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment;
import com.samsung.android.shealthmonitor.ui.dialog.listener.OnPositiveButtonClickListener;
import com.samsung.android.shealthmonitor.util.LOG;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DialogUtils.kt */
public final class DialogUtils {
    public static final DialogUtils INSTANCE = new DialogUtils();
    private static final String NO_CONNECTION_POPUP_TAG = "NO_CONNECTION_POPUP_TAG";
    private static final String TAG = "S HealthMonitor - DialogUtils";

    private DialogUtils() {
    }

    public final String getTAG() {
        return TAG;
    }

    public final String getNO_CONNECTION_POPUP_TAG() {
        return NO_CONNECTION_POPUP_TAG;
    }

    public static /* synthetic */ void showNoConnectionDialog$default(DialogUtils dialogUtils, FragmentActivity fragmentActivity, OnPositiveButtonClickListener onPositiveButtonClickListener, int i, Object obj) {
        if ((i & 2) != 0) {
            onPositiveButtonClickListener = null;
        }
        dialogUtils.showNoConnectionDialog(fragmentActivity, onPositiveButtonClickListener);
    }

    public final void showNoConnectionDialog(FragmentActivity fragmentActivity, OnPositiveButtonClickListener onPositiveButtonClickListener) {
        Intrinsics.checkParameterIsNotNull(fragmentActivity, "activity");
        if (!fragmentActivity.isFinishing() && !fragmentActivity.isDestroyed()) {
            SAlertDlgFragment.Builder builder = new SAlertDlgFragment.Builder(R.string.cannot_connect_with_your_watch, 1);
            builder.setContentText(R.string.cannot_connect_with_your_watch_desc);
            Fragment findFragmentByTag = fragmentActivity.getSupportFragmentManager().findFragmentByTag(NO_CONNECTION_POPUP_TAG);
            if (findFragmentByTag != null) {
                ((SAlertDlgFragment) findFragmentByTag).dismiss();
            }
            builder.setPositiveButtonClickListener(R.string.baseui_button_ok, new DialogUtils$showNoConnectionDialog$1(fragmentActivity, onPositiveButtonClickListener));
            builder.setPositiveButtonTextColor(fragmentActivity.getResources().getColor(R.color.dialog_color, (Resources.Theme) null));
            builder.setCanceledOnTouchOutside(false);
            try {
                builder.build().show(fragmentActivity.getSupportFragmentManager(), NO_CONNECTION_POPUP_TAG);
                String str = TAG;
                LOG.d(str, "Show " + NO_CONNECTION_POPUP_TAG);
            } catch (Exception unused) {
                String str2 = TAG;
                LOG.d(str2, "Error in " + NO_CONNECTION_POPUP_TAG);
            }
        }
    }

    public final void launchWearableManager(FragmentActivity fragmentActivity) {
        Intrinsics.checkParameterIsNotNull(fragmentActivity, "activity");
        PackageManager packageManager = fragmentActivity.getPackageManager();
        try {
            if (packageManager.getApplicationInfo("com.samsung.android.app.watchmanager", 0).enabled) {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage("com.samsung.android.app.watchmanager");
                if (launchIntentForPackage == null) {
                    LOG.i(TAG, "launchWearableManager() : intent is null.");
                    return;
                }
                launchIntentForPackage.setFlags(268468224);
                fragmentActivity.startActivity(launchIntentForPackage);
                return;
            }
            String str = TAG;
            LOG.i(str, "launchWearableManager() : " + fragmentActivity.getPackageName() + " is not enabled.");
        } catch (PackageManager.NameNotFoundException unused) {
            LOG.e(TAG, "launchWearableManager() : NameNotFoundException is occurred");
        }
    }

    public final void removeFragmentDialog(FragmentActivity fragmentActivity, String... strArr) {
        Intrinsics.checkParameterIsNotNull(fragmentActivity, "activity");
        Intrinsics.checkParameterIsNotNull(strArr, "tags");
        if (!fragmentActivity.isFinishing() && !fragmentActivity.isDestroyed()) {
            for (String findFragmentByTag : strArr) {
                Fragment findFragmentByTag2 = fragmentActivity.getSupportFragmentManager().findFragmentByTag(findFragmentByTag);
                if (findFragmentByTag2 != null) {
                    ((SAlertDlgFragment) findFragmentByTag2).dismiss();
                }
            }
        }
    }
}
