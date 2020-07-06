package com.samsung.android.shealthmonitor.ecg.util;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioGroup;
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment;
import com.samsung.android.shealthmonitor.ui.dialog.listener.ContentInitializationListener;

final /* synthetic */ class DemoUtil$$Lambda$0 implements ContentInitializationListener {
    private final RadioGroup[] arg$1;

    DemoUtil$$Lambda$0(RadioGroup[] radioGroupArr) {
        this.arg$1 = radioGroupArr;
    }

    public final void onContentInitialization(View view, Activity activity, Dialog dialog, Bundle bundle, SAlertDlgFragment.OKButtonHandler oKButtonHandler) {
        DemoUtil.lambda$showSelectErrortypeDialog$0$DemoUtil(this.arg$1, view, activity, dialog, bundle, oKButtonHandler);
    }
}
