package com.samsung.android.shealthmonitor.home.ui.activity;

import lanchon.dexpatcher.annotation.*;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v7.app.ActionBar;
import android.text.Annotation;
import android.text.SpannableString;
import android.text.SpannedString;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.samsung.android.shealthmonitor.bp.manager.WearableBpManager;
import com.samsung.android.shealthmonitor.ecg.manager.WearableEcgManager;
import com.samsung.android.shealthmonitor.home.BuildConfig;
import com.samsung.android.shealthmonitor.home.R;
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity;
import com.samsung.android.shealthmonitor.util.CustomTypefaceSpan;
import com.samsung.android.shealthmonitor.util.LOG;
import com.samsung.android.shealthmonitor.util.Utils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

import com.samsung.android.shealthmonitor.home.R;
import com.samsung.android.shealthmonitor.wearable.wearablemessage.WearableMessageManager;

@DexReplace
public final class SHealthMonitorManufacturerActivity extends BaseAppCompatActivity {
  private static final String TAG = "S HealthMonitor - SHealthMonitorManufacturerActivityNew";
  private HashMap _$_findViewCache;

  LinearLayout linearLayout;
  RelativeLayout relativeLayout;
  TextView textView;
  Button button;
  @DexReplace
  public final void _$_clearFindViewByIdCache() {
    if (this._$_findViewCache != null) {
      this._$_findViewCache.clear();
    }
  }

  @DexReplace
  public final View _$_findCachedViewById(int i) {
    if (this._$_findViewCache == null) {
      this._$_findViewCache = new HashMap();
    }
    View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
    if (view != null) {
      return view;
    }
    View findViewById = findViewById(i);
    this._$_findViewCache.put(Integer.valueOf(i), findViewById);
    return findViewById;
  }

  @DexReplace
  public final void onCreate(Bundle bundle) {
    super.onCreate(bundle);
    LOG.i(TAG, "Replaced onCreate() - Start");
//    setContentView(R.layout.shealth_monitor_manufacturer_activity);
    initView();
    initActionBar();
    LOG.i(TAG, "Replaced onCreate() - End");
  }

  private final void initView() {
    linearLayout = new LinearLayout(this);
    linearLayout.setOrientation(LinearLayout.VERTICAL);
    linearLayout.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.FILL_PARENT, ViewGroup.LayoutParams.FILL_PARENT));

    button = new Button(this);
    button.setText("Make Demo Request");
    button.setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        WearableEcgManager.getInstance().sendMakeDemoRequestSync();
        LOG.i(TAG, " Demo Request Sync");
      }
    });

    Button demobpbutton = new Button(this);
    demobpbutton.setText("BP Demo Request Sync");
    demobpbutton.setOnClickListener(new View.OnClickListener() {
    @Override
      public void onClick(View view) {
        WearableBpManager.getInstance().sendMakeDemoRequestSync();
        LOG.i(TAG, " BP Demo Request Sync");
      }
    });

    Button onboardingbutton = new Button(this);
    onboardingbutton.setText("Onboarding");
    onboardingbutton.setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        WearableEcgManager.getInstance().sendOnboardingRequestSync();
        LOG.i(TAG, " Onboarding");
      }
    });

    Button terms_button = new Button(this);
    terms_button.setText("terms button");
    terms_button.setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        WearableEcgManager.getInstance().sendTermsAndConditionRequestSync();
        LOG.i(TAG, " Terms and Conditions");
      }
    });
    Button initial_calibration = new Button(this);
    initial_calibration.setText("precalibration");
    initial_calibration.setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        WearableBpManager.getInstance().sendPreCalibrationRequestSync();
        LOG.i(TAG, " precalibration");
      }
    });
    Button bp_terms = new Button(this);
    bp_terms.setText("BP Terms");
    bp_terms.setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        WearableBpManager.getInstance().sendTermsAndConditionRequestSync();
        LOG.i(TAG, " BP terms");
      }
    });

    TextView titleView = new TextView(this);
    ViewGroup.LayoutParams lparams = new ViewGroup.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    titleView.setLayoutParams(lparams);
    titleView.setText("ECG Commands");
    linearLayout.addView(titleView);
    linearLayout.addView(button);
    linearLayout.addView(onboardingbutton);
    linearLayout.addView(terms_button);
    linearLayout.addView(initial_calibration);
    linearLayout.addView(bp_terms);
    linearLayout.addView(demobpbutton);

    setContentView(linearLayout);
  }


  @DexReplace
  private final void setAnnotationSpan(Context context, TextView textView) {
    try {
      CharSequence text = textView.getText();
      if (text == null) {
        throw new TypeCastException("null cannot be cast to non-null type android.text.SpannedString");
      }
      SpannedString spannedString = (SpannedString) text;
      if (spannedString != null) {
        Annotation[] annotationArr = (Annotation[]) spannedString.getSpans(0, spannedString.length(), Annotation.class);
        if (annotationArr.length > 0) {
//          Annotation annotation = annotationArr[0];
//          Intrinsics.checkExpressionValueIsNotNull(annotation, "annotations[0]");
//          annotation.getValue();
//          SpannableString spannableString = new SpannableString(spannedString);
//          for (Annotation annotation2 : annotationArr) {
//            Intrinsics.checkExpressionValueIsNotNull(annotation2, "annotation");
//            if (Intrinsics.areEqual("700", annotation2.getValue())) {
//              spannableString.setSpan(new CustomTypefaceSpan("", ResourcesCompat.getFont(context, com.samsung.android.shealthmonitor.base.R.font.samsungone_700_normal)), spannedString.getSpanStart(annotation2), spannedString.getSpanEnd(annotation2), 33);
//            }
//          }
//          textView.setText(spannableString);
        }
      }
    } catch (Exception e) {
      LOG.i(TAG, " [setAnnotationSpan] Exception : " + LOG.getStackTraceString(e));
    } catch (Error e2) {
      LOG.i(TAG, " [setAnnotationSpan] Error : " + LOG.getStackTraceString(e2));
    }
  }

  @DexReplace
  private final void initActionBar() {
    if (getSupportActionBar() != null) {
      ActionBar supportActionBar = getSupportActionBar();
      if (supportActionBar == null) {
        Intrinsics.throwNpe();
      }
      supportActionBar.setDisplayShowCustomEnabled(false);
      ActionBar supportActionBar2 = getSupportActionBar();
      if (supportActionBar2 == null) {
        Intrinsics.throwNpe();
      }
      Intrinsics.checkExpressionValueIsNotNull(supportActionBar2, "supportActionBar!!");
      supportActionBar2.setTitle("");
    }
  }

  @DexReplace
  private final void startActivityByClassName(String str, String str2, int i) {
    try {
      Intent intent = new Intent(this, Class.forName("com.samsung.android.shealthmonitor." + str + ".ui.activity." + str2));
      intent.setFlags(i);
      startActivity(intent);
    } catch (ClassNotFoundException e) {
      String str3 = TAG;
      LOG.e(str3, " Exception : class not found = " + e);
    }
  }

  @DexReplace
  public final boolean onOptionsItemSelected(MenuItem menuItem) {
    Intrinsics.checkParameterIsNotNull(menuItem, "item");
    if (menuItem.getItemId() == 16908332) {
      finish();
    }
    return super.onOptionsItemSelected(menuItem);
  }

  /* access modifiers changed from: protected */
  @DexReplace
  public final void onResume() {
    super.onResume();
    LOG.i(TAG, "onResume() - Start");
    LOG.i(TAG, "onResume() - End");
  }

}
