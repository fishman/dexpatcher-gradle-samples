package com.samsung.android.shealthmonitor.ecg.util;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.samsung.android.shealthmonitor.ui.dialog.listener.OnPositiveButtonClickListener;

/* compiled from: DialogUtils.kt */
final class DialogUtils$showNoConnectionDialog$1 implements OnPositiveButtonClickListener {
    final /* synthetic */ FragmentActivity $activity;
    final /* synthetic */ OnPositiveButtonClickListener $okListener;

    DialogUtils$showNoConnectionDialog$1(FragmentActivity fragmentActivity, OnPositiveButtonClickListener onPositiveButtonClickListener) {
        this.$activity = fragmentActivity;
        this.$okListener = onPositiveButtonClickListener;
    }

    public final void onClick(View view) {
        DialogUtils.INSTANCE.launchWearableManager(this.$activity);
        if (this.$okListener != null) {
            this.$okListener.onClick(view);
        }
    }
}
