package com.samsung.android.shealthmonitor.bp.ui.view


import android.app.Activity
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.Message
import android.view.View
import com.samsung.android.shealthmonitor.bp.BuildConfig
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorMeasurementActivity
import kotlinx.android.synthetic.main.shealth_monitor_first_step_measuring_view.view.*
import java.lang.ref.WeakReference


class SHealthMonitorStepMeasureMonitorView (context: Context) : SHealthMonitorStepView(context) {

    private var mBackground : Int

    private val mOuter = WeakReference<SHealthMonitorStepMeasureMonitorView>(this)
    private val mTimer = TimerHandler(mOuter)

    init {
        var layout : Int = R.layout.shealth_monitor_first_step_measuring_view
        mBackground = R.drawable.how_to_start_bpc
        View.inflate(context, layout, this)
        mTimer.sendEmptyMessage(mTimer.MESSAGE_TIMER_START)
    }

    override fun setAbNextListener(listener :  OnClickListener) {
        //mNext?.setOnClickListener(listener) removed, bugcode
    }

    override fun setAbPrevListener( listener :  OnClickListener) {
    }

    override fun getBackgroundDrawableId(): Int {
        return mBackground
    }

    override fun getVideoURI() : Uri? {
        val activity = context as Activity
        val path = "android.resource://" +  activity.packageName + "/" + R.raw.how_to_start_bpc_video_720
        return Uri.parse(path)
    }

    override fun hasVideo() : Boolean {
        return true
    }
    
    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        mTimer.sendEmptyMessage(mTimer.MESSAGE_TIMER_STOP)
    }

    override fun onBack() {
        cancelCalibration("prepare_calibration")
    }

    fun startMeasuringActivity() {
        if (Build.VERSION.SDK_INT > Build.VERSION_CODES.P)
            context.startActivity(Intent(Intent.ACTION_VIEW,
                    Uri.parse("shealthmonitor://shealthmonitor.samsung.com/deepLink?type=bp&target=SHealthMonitorMeasurementActivity")))
        else
            context.startActivity(Intent(context, SHealthMonitorMeasurementActivity::class.java))
    }

    fun updateCount(number : Int) {
        if (number == 1) mDescriptionWithCounter.text = context.getString(R.string.shealth_monitor_bp_your_watch_will_start_measuring_automatically_in_pd_second, number)
        else mDescriptionWithCounter.text = context.getString(R.string.shealth_monitor_bp_your_watch_will_start_measuring_automatically_in_pd_seconds, number)
        mDescriptionWithCounter.visibility = View.VISIBLE
    }

    class TimerHandler(private val mOuter: WeakReference<SHealthMonitorStepMeasureMonitorView>) : Handler() {

        val MESSAGE_TIMER_START = 1001
        val MESSAGE_TIMER_STOP = 1002
        private val MESSAGE_TIMER_END = 1003
        var count = if (BuildConfig.DEBUG) 5 else 15

        override fun handleMessage(msg: Message?) {
            when (msg?.what) {
                MESSAGE_TIMER_START -> {
                    if (BuildConfig.DEBUG)
                        mOuter.get()?.updateCount(count--)
                    else {
                        if (count <= 10) mOuter.get()?.updateCount(count--) else count--
                    }
                    when (count) {
                        0 -> sendEmptyMessage(MESSAGE_TIMER_END)
                       else -> sendEmptyMessageDelayed(MESSAGE_TIMER_START, 1000)
                    }
                }
                MESSAGE_TIMER_END -> mOuter.get()?.startMeasuringActivity()
                MESSAGE_TIMER_STOP -> removeMessages(MESSAGE_TIMER_START)
            }
        }
    }
}
