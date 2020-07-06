package com.samsung.android.shealthmonitor.home.ui.activity

import android.content.Intent
import android.graphics.Color
import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.view.MenuItem
import android.view.View
import android.widget.Toast
import com.samsung.android.shealthmonitor.controller.ControlManager
import com.samsung.android.shealthmonitor.helper.ContextHolder
import com.samsung.android.shealthmonitor.helper.ContextHolder.getContext
import com.samsung.android.shealthmonitor.home.R
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.util.CommonConstants
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.wearable.device.Node
import com.samsung.android.shealthmonitor.wearable.device.NodeMonitor
import com.samsung.android.shealthmonitor.wearable.sync.WearableSyncManager
import com.samsung.android.shealthmonitor.wearable.utils.WearableUtil
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import kotlinx.android.synthetic.main.shealth_monitor_accessories_activity.*
import java.sql.Time
import java.text.SimpleDateFormat
import java.util.Locale


class SHealthMonitorAccessoriesActivity : BaseAppCompatActivity() {

    var mNode: Node? = null
    var mDisposable: Disposable?= null
    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        LOG.i(TAG, "onCreate() - Start")
        setContentView(R.layout.shealth_monitor_accessories_activity)
        initView()
        initActionBar()
        getDeviceInfo()
        LOG.i(TAG, "onCreate() - End")
    }

    private fun initView() {
        mConnectedWatchContainer.setOnClickListener {
            WearableUtil.showGalaxyWearable()

        }
        mSyncData.setOnClickListener {
            startSyncData()
        }
        mPairMyWatch.setOnClickListener {
            WearableUtil.showGalaxyWearable()
        }
        mLearnMore.setOnClickListener {
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse(CommonConstants.URL_GALAXY_WATCH_SITE))
            ContextHolder.getCurrentActivity().startActivity(intent)
        }
        updateView()
    }

    private fun updateView () {

    }

    private fun initActionBar() {

        if (supportActionBar != null) {
            supportActionBar!!.setDisplayShowCustomEnabled(false)
            supportActionBar!!.title = ""
        }
    }

    private fun startActivityByClassName(packageName: String, className: String, launchFlag: Int) {
        try {
            val activity = Class.forName("com.samsung.android.shealthmonitor.$packageName.ui.activity.$className")
            val intent = Intent(this, activity)
            intent.flags = launchFlag //Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
            startActivity(intent)
        } catch (e: ClassNotFoundException) {
            LOG.e(TAG, " Exception : class not found = $e")
        }

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

    override fun onDestroy() {
        LOG.d(TAG, "onDestroy")
        mDisposable?.dispose()
        super.onDestroy()
    }

    private fun getDeviceInfo() {
        mDisposable = NodeMonitor.nodeObservable()
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { node->setConnectedDevice(node)}
    }

    private fun setConnectedDevice(node: Node) {

        if( node.connectionStatus == Node.ConnectionStatusValue.CONNECTED ) {
            mNode = node

            updateLastSyncTime()
            mWatchInfoName.text = mNode?.getInformation(Node.InformationKey.DEVICE_NICK_NAME) as String
            mNoAccessory.visibility = View.GONE
            mWatchContainer.visibility = View.VISIBLE
            mButtonLayout.visibility = View.GONE
        } else {
            mNode = null
            if (mSyncProgressBar.visibility == View.VISIBLE) {
                Toast.makeText(getContext(), "Unable to sync data. Watch disconnected.", Toast.LENGTH_SHORT).show()
            }
            mNoAccessory.visibility = View.VISIBLE
            mWatchContainer.visibility = View.GONE
            mButtonLayout.visibility = View.VISIBLE
        }
    }

    private fun updateLastSyncTime() {
        val lastSyncTime =  WearableUtil.getLastWearableDataInsertTime(mNode)
        if (lastSyncTime > 0 ) {
            val formatter = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
            val time = Time(lastSyncTime)
            val descriptionFormat = ContextHolder.getContext().resources?.getString(R.string.home_accessories_last_synced_on_s)
            mWatchInfoDescription.visibility = View.VISIBLE
            mWatchInfoDescription.text = String.format(descriptionFormat.toString(), formatter.format(time))
        } else {
            mWatchInfoDescription.visibility = View.INVISIBLE
        }
    }

    private fun startSyncData() {
        if( mSyncProgressBar.visibility != View.VISIBLE ) {
            mSyncData.isEnabled = false
            mSyncProgressBar.visibility = View.VISIBLE
            mWatchInfoDescription.visibility = View.VISIBLE
            mWatchInfoDescription.text = ContextHolder.getContext().resources?.getString(R.string.home_accessories_syncing)
            setTimeout()
            ControlManager.getInstance().requestSync { response ->
                if( !isDestroyed && !isFinishing ) {
                    mSyncProgressBar.visibility = View.INVISIBLE
                    mSyncData.isEnabled = true
                    updateLastSyncTime()
                    if (response == WearableSyncManager.WearableDataSync.ResultValue.FAIL) {
                        showSyncErrorDialog()
                    }
                }
            }
        }
    }


    private fun showSyncErrorDialog() {
        if (!isFinishing && !isDestroyed) {
            val builder = SAlertDlgFragment.Builder(
                    R.string.shealth_monitor_unable_to_sync_data,
                    SAlertDlgFragment.TYPE_P_N_BUTTON)
            builder.setContentText(R.string.shealth_monitor_something_went_wrong_try_again)
            builder.setHideTitle(false)
            builder.setCanceledOnTouchOutside(true)
            builder.setNegativeButtonClickListener(R.string.common_cancel) { view -> }
            builder.setPositiveButtonClickListener(R.string.baseui_button_retry) { view -> startSyncData() }
            builder.setNegativeButtonTextColor(Color.parseColor("#5280f2"))
            builder.setNeutralButtonTextColor(Color.parseColor("#5280f2"))
            val dialog = builder.build()
            supportFragmentManager.beginTransaction().add(dialog, "dialog")
                    .commitAllowingStateLoss()
        }
    }

    companion object {
        private val TAG = LOG.prefix + "SHealthMonitorAccessoriesActivity"
    }

    private fun setTimeout() {
        Handler().postDelayed({
            runOnUiThread {
                mSyncProgressBar.visibility = View.INVISIBLE
                mSyncData.isEnabled = true
                updateLastSyncTime()
            }
        }, 10000)//

    }
}
