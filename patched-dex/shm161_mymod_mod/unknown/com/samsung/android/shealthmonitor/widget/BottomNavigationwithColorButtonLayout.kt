/**
 * Copyright (C) 2017 Samsung Electronics Co., Ltd. All rights reserved.
 *
 *
 * Mobile Communication Division,
 * IT & Mobile Communications, Samsung Electronics Co., Ltd.
 *
 *
 * This software and its documentation are confidential and proprietary
 * information of Samsung Electronics Co., Ltd.  No part of the software and
 * documents may be copied, reproduced, transmitted, translated, or reduced to
 * any electronic medium or machine-readable form without the prior written
 * consent of Samsung Electronics.
 *
 *
 * Samsung Electronics makes no representations with respect to the contents,
 * and assumes no responsibility for any errors that might appear in the
 * software and documents. This publication and the contents hereof are subject
 * to change without notice.
 */

package com.samsung.android.shealthmonitor.widget

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.widget.LinearLayout
import com.samsung.android.shealthmonitor.base.R
import kotlinx.android.synthetic.main.bottom_navigation_with_color_button_layout.view.*


class BottomNavigationwithColorButtonLayout : LinearLayout {

    /**
     * Copyright (C) 2017 Samsung Electronics Co., Ltd. All rights reserved.
     *
     *
     * Mobile Communication Division,
     * IT & Mobile Communications, Samsung Electronics Co., Ltd.
     *
     *
     * This software and its documentation are confidential and proprietary
     * information of Samsung Electronics Co., Ltd.  No part of the software and
     * documents may be copied, reproduced, transmitted, translated, or reduced to
     * any electronic medium or machine-readable form without the prior written
     * consent of Samsung Electronics.
     *
     *
     * Samsung Electronics makes no representations with respect to the contents,
     * and assumes no responsibility for any errors that might appear in the
     * software and documents. This publication and the contents hereof are subject
     * to change without notice.
     */

    private var mContext: Context? = null
    private var mClickListener: BottomNavigationwithColorButtonLayout.BottomActionButtonClickListener? = null

    lateinit var mLeftButton : HTextButton
    lateinit var mRightButton : HColorButton


    constructor(context: Context) : super(context) {
        this.mContext = context
        initView()
    }

    constructor(context: Context, attrs: AttributeSet?) : super(context, attrs) {
        mContext = context
        initView()
    }

    constructor(context: Context, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        mContext = context
        initView()
    }

    private fun initView() {
        View.inflate(mContext, R.layout.bottom_navigation_with_color_button_layout, this)
        mLeftButton = hTextButtonLeft
        mRightButton = hTextButtonRight

        mLeftButton.setText(R.string.common_tracker_previous)
        mRightButton.setText(R.string.shealth_monitor_calibrate_my_watch)


        hTextButtonLeft.setOnClickListener {
                mClickListener!!.onLeftActionClick()
        }

        hTextButtonRight.setOnClickListener {
                mClickListener!!.onRightActionClick()
        }
    }

    fun setClickListener(clickListener: BottomNavigationwithColorButtonLayout.BottomActionButtonClickListener) {
        this.mClickListener = clickListener
    }

    interface BottomActionButtonClickListener {
        fun onRightActionClick()

        fun onLeftActionClick()
    }
}
