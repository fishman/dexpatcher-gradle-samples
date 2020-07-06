package com.samsung.android.shealthmonitor.bp.ui.card

import android.content.Context
import android.view.View
import android.widget.LinearLayout
import android.widget.RelativeLayout
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.helper.BpSharedPreferenceHelper
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_intro_top_card_layout.view.*


class SHealthMonitorBpIntroTopCard constructor(context: Context, restrictStatus: Boolean) : RelativeLayout(context) {

    private val TAG = LOG.prefix + "SHealthMonitorBpIntroTopCard"

    init {
        View.inflate(context, R.layout.shealth_monitor_intro_top_card_layout, this)
        setContent()
        checkCancelButton(restrictStatus)
    }

    fun setContent() {
        setBackground(R.drawable.value_proposition)
        setTitle(R.string.shealth_monitor_bp_intro_title)
        setButtonText(R.string.shealth_monitor_bp_view_more)
    }

    fun setBackground(background : Int) {
        mCardLayout?.background = resources.getDrawable(background, null)
    }

    fun setTitle(title : Int) {
        mTitle?.text = resources.getText(title)
    }

    fun setButtonText(buttonName : Int) {
        mViewMoreButton?.text = resources.getText(buttonName)
    }

    fun setButtonOnClickListener(listener : OnClickListener) {
        mViewMoreButton?.setOnClickListener(listener)
    }

    fun getCancelButton() : LinearLayout {
        return mCancelButton;
    }

    fun checkCancelButton(restrictStatus : Boolean) {
        if (BpSharedPreferenceHelper.getBpMeasuredDataExist() && !restrictStatus) {
            mCancelButton.visibility =  View.VISIBLE;
        } else {
            mCancelButton.visibility =  View.GONE;
        }
    }
}
