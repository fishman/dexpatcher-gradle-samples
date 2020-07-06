package com.samsung.android.shealthmonitor.home.ui.activity

import android.graphics.Color
import android.graphics.Typeface
import android.os.Bundle
import android.support.v4.content.res.ResourcesCompat
import android.view.MenuItem
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import com.samsung.android.shealthmonitor.home.R
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils
import kotlinx.android.synthetic.main.shealth_monitor_privacy_policy.*
import android.support.v4.view.ViewPager.OnPageChangeListener as OnPageChangeListener1


class SHealthMonitorPrivacyPolicyActivity : BaseAppCompatActivity() {

    var fontFace : Typeface? = null

    public override fun onCreate(savedInstanceState: Bundle?) {
        setSetDefaultMenuColor(true)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.shealth_monitor_privacy_policy)
        initActionBar()
        initView()
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
        }

        return super.onOptionsItemSelected(item)
    }

    override fun onResume() {
        super.onResume()
        LOG.i(TAG, "onResume() - Start")
        LOG.i(TAG, "onResume() - End")
    }

    private fun initActionBar() {
        supportActionBar?.setHomeButtonEnabled(true)
        supportActionBar?.setDisplayShowCustomEnabled(false)
        supportActionBar?.title = ""
    }

    private fun initView() {
        val titlePrefix = "shealth_monitory_privacy_policy_title_"
        val descPrefix = "shealth_monitory_privacy_policy_desc_"

        fontFace = ResourcesCompat.getFont(this, R.font.samsungone_500)

        for (i in 0..9) {
            val titleStringId = Utils.getResId(titlePrefix + i, R.string::class.java)
            if (titleStringId != -1) {
                addTitleTextView(titleStringId)
                for (j in 0..10) {
                    val descStringId = Utils.getResId(descPrefix + i + "_" + j, R.string::class.java)
                    if (descStringId != -1) {
                        addDescTextView(descStringId)
                    } else {
                        break
                    }
                }
            } else {
                break
            }
        }
    }

    private fun addTitleTextView(resId : Int) {
        return mContentView.addView(TextView(this).apply {
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                setMargins(0, 0, 0, Utils.convertDpToPx(24))
            }
            setText(resId)
            setTextColor(Color.BLACK)
            setTypeface(fontFace, Typeface.BOLD)
            textSize = 17f
            setLineSpacing(9f, 1.0f)
        })
    }

    private fun addDescTextView(resId : Int) {
        return mContentView.addView(TextView(this).apply {
            layoutParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT).apply {
                setMargins(0, 0, 0, Utils.convertDpToPx(24))
            }
            setText(resId)
            setTextColor(Color.BLACK)
            typeface = fontFace
            textSize = 14f
            setLineSpacing(9f, 1.0f)
        })
    }

    companion object {
        private val TAG = LOG.prefix + "SHealthMonitorPrivacyPolicyActivity"
    }
}
