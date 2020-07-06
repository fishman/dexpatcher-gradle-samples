package com.samsung.android.shealthmonitor.bp.ui.card

import android.content.Context
import android.view.View
import android.widget.LinearLayout
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_bp_restriction_view.view.*


class SHealthMonitorBpRestrictionView constructor(context: Context, type : Restriction) : LinearLayout(context) {

    private val TAG = LOG.prefix + "SHealthMonitorBpRestrictionView"

    enum class Restriction {
        INCOMPATIBLE_WEARABLE,
        NOT_SUPPORTED_COUNTRY,
        NOT_INTENDED_AGE
    }

    init {
        View.inflate(context, R.layout.shealth_monitor_bp_restriction_view, this)
        setContent(type)
    }

    fun setContent(type : Restriction) {
        when (type) {
            Restriction.NOT_SUPPORTED_COUNTRY -> {
                setImage(R.drawable.watch_incompatible_icon)
                setTitle(resources.getString(R.string.shealth_monitor_bp_restriction_card_not_available_title))
                setDescription(resources.getString(R.string.shealth_monitor_bp_restriction_card_not_available_description))
            }
            Restriction.INCOMPATIBLE_WEARABLE -> {
                setImage(R.drawable.watch_incompatible_icon)
                setTitle(resources.getString(R.string.shealth_monitor_bp_restriction_card_watch_incompatible_title))
                setDescription(resources.getString(R.string.shealth_monitor_bp_restriction_card_watch_incompatible_description))
            }
            Restriction.NOT_INTENDED_AGE -> {
                setImage(R.drawable.age_restriction_icon)
                setTitle(resources.getString(R.string.shealth_monitor_bp_restriction_card_age_restriction_title))
                setDescription(resources.getString(R.string.shealth_monitor_bp_restriction_card_age_restriction_description))
            }
        }
    }

    fun setImage(icon : Int) {
        mImage?.setImageResource(icon)
    }

    fun setTitle(title : String) {
        mTitle?.text = title
    }

    fun setDescription(description : String) {
        mDescription?.text = description
    }
}
