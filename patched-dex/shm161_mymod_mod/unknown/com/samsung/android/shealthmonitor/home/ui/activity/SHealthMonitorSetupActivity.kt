package com.samsung.android.shealthmonitor.home.ui.activity

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.view.MenuItem
import android.view.View
import android.widget.TextView
import com.samsung.android.shealthmonitor.controller.ControlManager
import com.samsung.android.shealthmonitor.helper.IntentAction
import com.samsung.android.shealthmonitor.home.R
import com.samsung.android.shealthmonitor.home.util.SHealthMonitorPolicyViewer
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.util.CommonConstants
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.wearable.device.Node
import com.samsung.android.shealthmonitor.wearable.device.Node.InformationKey.DEVICE_NICK_NAME
import com.samsung.android.shealthmonitor.wearable.device.NodeMonitor
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import kotlinx.android.synthetic.main.shealth_monitor_setup_activity.*
import kotlin.system.exitProcess

class SHealthMonitorSetupActivity : BaseAppCompatActivity() {

    private var mDisposable: Disposable?= null

    private var mIsNewDevice : Boolean = false


    companion object {
        private const val TAG = LOG.prefix + "SHealthMonitorSetupActivity"
        private const val DIALOG_POPUP_CONFIRM_TNC_PP= "DIALOG_POPUP_CONFIRM_TNC_PP"
    }

    public override fun onCreate(savedInstanceState: Bundle?) {
//        setTheme(R.style.SHealthMonitorThemeLightNoDividerTransparentActionBar)
        super.onCreate(savedInstanceState)
        LOG.i(TAG, "onCreate() - Start")

        setContentView(R.layout.shealth_monitor_setup_activity)
        if (intent != null) {
            mIsNewDevice = intent.getBooleanExtra(IntentAction.EXTRA_KEY_NEW_DEVICE, false)
        }
        if (savedInstanceState != null) {
            mIsNewDevice = savedInstanceState.getBoolean("isNewDevice", false)
        }
        initView()
        initActionBar()
        getDeviceInfo()
        LOG.i(TAG, "onCreate() - End")

    }

    override fun onSaveInstanceState(outState: Bundle?) {
        outState?.putBoolean("isNewDevice", mIsNewDevice)
        super.onSaveInstanceState(outState)
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
        }

        return super.onOptionsItemSelected(item)
    }

    private fun initView() {

        mContinueButton.setOnClickListener {
            doNext()
        }
        mWithoutButton.setOnClickListener {
            doNext()
        }

        mLearnMore.setOnClickListener {
            startActivityByClassName("bp",
                    "SHealthMonitorBpHowToUseActivity",
                    Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }

        updateView()
    }

    private fun doNext() {
        if (mIsNewDevice) {
            synchronizeTnc()
            startActivityByClassName("home",
                    "SHealthMonitorMainActivity",
                    Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
            finish()
        } else {
            startActivityByClassName("home",
                    "SHealthMonitorProfileEditActivity",
                    Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }
    }

    private fun initActionBar() {
        supportActionBar?.setHomeButtonEnabled(false)
        supportActionBar?.setDisplayShowTitleEnabled(false)
        supportActionBar?.setDisplayShowCustomEnabled(false)
        supportActionBar?.title = ""
    }

    private fun updateView () {
        /*Contents for connected scenario*/

    }

    private fun getDeviceInfo() {
        mDisposable = NodeMonitor.nodeObservable()
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { node->setConnectedDevice(node)}
    }

    private fun setConnectedDevice(node: Node) {
        if (mIsNewDevice && !NodeMonitor.getInstance().isConnectedBpNode) {
            LOG.i(TAG, " return -> setConnectedDevice : $node ss=${node.connectionStatus} ")
            return
        }
        if( node.connectionStatus == Node.ConnectionStatusValue.CONNECTED ) {
            mConnectedWearableName.text = node.getInformation(DEVICE_NICK_NAME) as String

            mConnectedContainer.visibility = View.VISIBLE
            mDisconnectedContainer.visibility = View.GONE
            mContinueButton.visibility = View.VISIBLE
            mWithoutButton.visibility = View.GONE
            if (mIsNewDevice) {
                mTermsAndConditions.visibility = View.VISIBLE
                setAgreementLink(mTermsAndConditions)
                if (ControlManager.getInstance().isAllValid(node, node.getInformation(Node.InformationKey.DEVICE_ID) as String, node.getInformation(Node.InformationKey.PACKAGE_NAME) as String)) {
                    finish()
                }
            } else {
                mTermsAndConditions.visibility = View.GONE
            }
        } else {
            if (!NodeMonitor.getInstance().isConnectedBpNode) {
                mConnectedContainer.visibility = View.GONE
                mDisconnectedContainer.visibility = View.VISIBLE
                mContinueButton.visibility = View.GONE
                mWithoutButton.visibility = View.VISIBLE
                mTermsAndConditions.visibility = View.GONE
            }
            if (mIsNewDevice) {
                finish()
            }
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

    override fun onDestroy() {
        LOG.d(TAG, "onDestroy")
        mDisposable?.dispose()
        super.onDestroy()
    }

    override fun onBackPressed() {
        if(mIsNewDevice) {
            showConfirmDialog()
        } else {
            super.onBackPressed()
        }
    }

    private fun setAgreementLink(textView : TextView) {
        SHealthMonitorPolicyViewer.setAnnotationForTncAndPrivacy(this, textView)
    }

    private fun showConfirmDialog() {

        val fragment = supportFragmentManager.findFragmentByTag(DIALOG_POPUP_CONFIRM_TNC_PP)
        if (fragment != null && fragment.isVisible) {
            LOG.d(TAG, "showConfirmDialog is already visible")
            return
        }

        val customLayout = R.layout.shealth_monitor_setup_tnc_pp_confirm_dialog_custom

        if (!isFinishing && !isDestroyed) {
            val builder = SAlertDlgFragment.Builder(R.string.home_setup_tnc_pp_confirm_popup_title, SAlertDlgFragment.TYPE_P_N_BUTTON)
            builder.setContent(customLayout) { view, _, _, _, _ ->
                val customDescription = view?.findViewById(R.id.mCustomDescription) as TextView
                setAgreementLink(customDescription)
            }
            builder.setPositiveButtonTextColor(Color.parseColor("#5280f2"))
            builder.setPositiveButtonClickListener(R.string.common_yes_exit) {
                finishAffinity()
                exitProcess(0)
            }
            builder.setNegativeButtonTextColor(Color.parseColor("#5280f2"))
            builder.setNegativeButtonClickListener(R.string.baseui_button_cancel) {}
            try {
                if (isForeground) builder.build().show(supportFragmentManager, DIALOG_POPUP_CONFIRM_TNC_PP)
            } catch (exception: IllegalStateException) {
                LOG.d(TAG, "showConfirmDialog IllegalStateException :$exception")
            }
        }
    }

    private fun synchronizeTnc() {
        val intent = Intent(CommonConstants.ACTION_TNC_SYNC)
        intent.setPackage(packageName)
        sendBroadcast(intent)
    }
}