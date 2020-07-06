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
import android.widget.ImageView
import android.widget.LinearLayout

import com.samsung.android.shealthmonitor.base.R
import kotlinx.android.synthetic.main.bottom_navigation_layout.view.*
import kotlinx.android.synthetic.main.bottom_navigation_layout.view.hTextButtonLeft
import kotlinx.android.synthetic.main.bottom_navigation_layout.view.hTextButtonRight
import kotlinx.android.synthetic.main.bottom_navigation_swipe_layout.view.*


class BottomNavigationSwipeLayout : LinearLayout {

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
    private var mClickListener: BottomNavigationSwipeLayout.BottomActionButtonClickListener? = null

    lateinit var mRightButton : HTextButton
    lateinit var mLeftButton : HTextButton
    lateinit var mDot0 : ImageView
    lateinit var mDot1 : ImageView
    lateinit var mDot2 : ImageView


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
        View.inflate(mContext, R.layout.bottom_navigation_swipe_layout, this)
        mLeftButton = hTextButtonLeft
        mRightButton = hTextButtonRight
        mDot0 = mSwipeDot0
        mDot1 = mSwipeDot1
        mDot2 = mSwipeDot2

        mLeftButton.setText(R.string.common_tracker_previous)

        hTextButtonLeft.setOnClickListener {
                mClickListener!!.onLeftActionClick()
        }

        hTextButtonRight.setOnClickListener {
                mClickListener!!.onRightActionClick()
        }
    }

    fun setClickListener(clickListener: BottomNavigationSwipeLayout.BottomActionButtonClickListener) {
        this.mClickListener = clickListener
    }

    interface BottomActionButtonClickListener {
        fun onRightActionClick()

        fun onLeftActionClick()
    }
}
