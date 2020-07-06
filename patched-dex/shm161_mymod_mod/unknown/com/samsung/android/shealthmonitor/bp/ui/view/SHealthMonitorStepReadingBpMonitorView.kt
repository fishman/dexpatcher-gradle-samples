package com.samsung.android.shealthmonitor.bp.ui.view


import android.content.Context
import android.content.Intent
import android.view.View
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpInputActivity
import kotlinx.android.synthetic.main.shealth_monitor_first_step_next_selection_view.view.*


class SHealthMonitorStepReadingBpMonitorView (context: Context) : SHealthMonitorStepView(context){

    var mContext : Context = context
    var mBackground : Int

    init {
        val layout : Int = R.layout.shealth_monitor_first_step_next_selection_view
        mBackground = R.color.step_start_top_color

        View.inflate(mContext, layout, this)

        mNext.setOnClickListener{
            val intent = Intent(context, SHealthMonitorBpInputActivity::class.java)
            mContext.startActivity(intent)
        }
    }

    override fun setAbNextListener(listener :  OnClickListener) {

    }

    override fun setAbPrevListener( listener :  OnClickListener) {
    }

    override fun getBackgroundDrawableId(): Int {
        return mBackground
    }

    override fun onBack() {
    }

}
