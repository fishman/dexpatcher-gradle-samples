package com.samsung.android.shealthmonitor.home.ui.activity

import android.app.Activity
import android.app.Application
import android.arch.lifecycle.Observer
import android.content.Intent
import android.content.res.ColorStateList
import android.graphics.Color
import android.os.Bundle
import android.support.annotation.NonNull
import android.view.MenuItem
import android.view.MotionEvent
import android.view.View
import android.view.inputmethod.EditorInfo
import com.samsung.android.shealthmonitor.controller.ControlInterface
import com.samsung.android.shealthmonitor.controller.ControlManager
import com.samsung.android.shealthmonitor.data.UserProfile
import com.samsung.android.shealthmonitor.helper.EditTextValidationChecker
import com.samsung.android.shealthmonitor.helper.IntentAction
import com.samsung.android.shealthmonitor.helper.SharedPreferenceHelper
import com.samsung.android.shealthmonitor.home.R
import com.samsung.android.shealthmonitor.home.util.SHealthMonitorPolicyViewer
import com.samsung.android.shealthmonitor.manager.SHealthMonitorLogManager
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.ui.dialog.MonthPickerDlgFragment
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.ui.dialog.SListDlgFragment
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.SoftInputUtils
import com.samsung.android.shealthmonitor.wearable.device.Node
import com.samsung.android.shealthmonitor.wearable.device.NodeMonitor
import com.samsung.android.shealthmonitor.widget.HEditText
import kotlinx.android.synthetic.main.shealth_monitor_profile_edit_activity.*
import java.text.DateFormatSymbols
import java.util.*
import java.util.regex.Pattern
import kotlin.collections.ArrayList


class SHealthMonitorProfileEditActivity : BaseAppCompatActivity() {

    private val mGenderList = ArrayList<String>()
    private var mCommonColorList: ColorStateList? = null
    private var mMonth: Int? = -1
    private var mGender: String? = null
    private var mGenderIndex: Int? = -1
    private var mIsFirst: Boolean = false

    companion object {
        private const val TAG = LOG.prefix + "SHealthMonitorProfileEditActivity"
        private const val DIALOG_TAG_MONTH_PICKER_POPUP = "DIALOG_TAG_MONTH_PICKER_POPUP"
        private const val DIALOG_TAG_GENDER_PICKER_POPUP = "DIALOG_TAG_GENDER_PICKER_POPUP"
        private const val DIALOG_TAG_INAPPLICABLE_POPUP = "DIALOG_TAG_GENDER_PICKER_POPUP"
        private const val MIN_YEAR: Int = 1900
        private const val INAPPLICABLE_AGE: Int = 22
        private const val MAX_CHARACTER_LIMIT = 50
    }

    public override fun onCreate(savedInstanceState: Bundle?) {
        setSetDefaultMenuColor(true)
        super.onCreate(savedInstanceState)
        LOG.i(TAG, "onCreate() - Start")

        setContentView(R.layout.shealth_monitor_profile_edit_activity)
        mEditTextFirstName.setErrorView(mErrorTextFirstName)
        mEditTextLastName.setErrorView(mErrorTextLastName)
        mEditMonth.setErrorView(mErrorTextMonth)
        mEditDate.setErrorView(mErrorTextDay)
        mEditYear.setErrorView(mErrorTextYear)
        mGenderList.addAll(resources.getStringArray(R.array.gender_list))
        initView()
        initActionBar()
        overridePendingTransition(0,0)
        LOG.i(TAG, "onCreate() - End")
    }

    override fun onRestoreInstanceState(savedInstanceState: Bundle?) {
        super.onRestoreInstanceState(savedInstanceState)
        LOG.i(TAG, "onRestoreInstanceState() - Start")
        mEditTextFirstName.setText(savedInstanceState?.getString("mEditTextFirstName"))
        mEditTextLastName.setText(savedInstanceState?.getString("mEditTextLastName"))
        mMonth = savedInstanceState?.getInt("mMonth", -1)
        if (mMonth != null) {
            mEditMonth.setText(getMonthString(mMonth))
        } else {
            mEditMonth.setText("")
        }
        mEditDate.setText(savedInstanceState?.getString("mEditDate"))
        mEditYear.setText(savedInstanceState?.getString("mEditYear"))
        mGenderIndex = savedInstanceState?.getInt("mGenderIndex", -1)
        if (mGenderIndex != null && 0 <= mGenderIndex!!.toInt() && mGenderIndex!!.toInt() < mGenderList.size) {
            mEditTextGender.setText(mGenderList[mGenderIndex!!])
        } else {
            mEditTextGender.setText("")
        }
        updateEmptyField()
        LOG.i(TAG, "onRestoreInstanceState() - End")
    }

    override fun onSaveInstanceState(outState: Bundle?) {
        super.onSaveInstanceState(outState)
        LOG.i(TAG, "onSaveInstanceState() - Start")
        outState?.putString("mEditTextFirstName", mEditTextFirstName.text.toString())
        outState?.putString("mEditTextLastName", mEditTextLastName.text.toString())
        if (mMonth != null) {
            outState?.putInt("mMonth", mMonth!!)
        }
        outState?.putString("mEditDate", mEditDate.text.toString())
        outState?.putString("mEditYear", mEditYear.text.toString())
        if (mGenderIndex != null) {
            outState?.putInt("mGenderIndex", mGenderIndex!!)
        }
        LOG.i(TAG, "onSaveInstanceState() - End")
    }

    private fun initView() {
        mCommonColorList = mEditTextFirstName.backgroundTintList

        val firstNameChecker = EditTextValidationChecker(mEditTextFirstName, { editText ->
            isValidNameFormat(editText.text.toString())
        }, MAX_CHARACTER_LIMIT, resources.getString(R.string.shealth_monitor_profile_enter_a_valid_name))
        firstNameChecker.current.observe(this, Observer{ updateEmptyField() })

        val lastNameChecker = EditTextValidationChecker(mEditTextLastName, { editText ->
            isValidNameFormat(editText.text.toString())
        }, MAX_CHARACTER_LIMIT, resources.getString(R.string.shealth_monitor_profile_enter_a_valid_name))
        lastNameChecker.current.observe(this, Observer{ updateEmptyField() })

        val yearChecker = EditTextValidationChecker(mEditYear, { editText ->
            checkBirthDay(editText)
        }, 0, resources.getString(R.string.shealth_monitor_profile_enter_a_valid_date_of_birth))
        yearChecker.current.observe(this, Observer { updateEmptyField() })
        yearChecker.setDoneAction {
            if (mEditTextGender.text?.isEmpty() == true) {
                mEditTextGender.requestFocus()
                openGenderPickerDialog()
            }
            checkBirthDay(mEditYear, true)
        }

        val dateChecker = EditTextValidationChecker(mEditDate, { editText ->
            checkBirthDay(editText)
        }, 0, resources.getString(R.string.shealth_monitor_profile_enter_a_valid_date_of_birth))
        dateChecker.current.observe(this, Observer { updateEmptyField() })
        dateChecker.setDoneAction {
            checkBirthDay(mEditDate, true)
        }

        val monthChecker = EditTextValidationChecker(mEditMonth, { editText ->
            checkBirthDay(editText)
        }, 0, resources.getString(R.string.shealth_monitor_profile_enter_a_valid_date_of_birth))
        monthChecker.current.observe(this, Observer { updateEmptyField() })

        mEditMonth.setOnTouchListener { _ , event ->
            if( event.action == MotionEvent.ACTION_UP) {
                openMonthPickerDialog()
            }
            return@setOnTouchListener false
        }

        mEditTextGender.setOnTouchListener { _ , event ->
            if( event.action == MotionEvent.ACTION_UP) {
                openGenderPickerDialog()
            }
            return@setOnTouchListener false
        }

        mFinishButton.setOnClickListener{
            val year = Calendar.getInstance().get(Calendar.YEAR)
            val current =Integer.parseInt(mEditYear.text.toString())

            if( INAPPLICABLE_AGE >  year - current ) {
                showInapplicableDialog()
                // isEmpty = true
            } else {
                if (mEditYear.length() < 4) {
                    checkBirthDay(mEditYear, true)
                } else if (Integer.parseInt(mEditDate.text.toString()) == 0) {
                    checkBirthDay(mEditDate, true)
                } else {
                    saveProfile()
                }
            }
        }
        setAgreementArea()
        updateView()
        mIsFirst = !SharedPreferenceHelper.getAppInit()

        if ("KR".equals(Locale.getDefault().country, true)) {
            mEditTextLastName.imeOptions = EditorInfo.IME_ACTION_NEXT
            mEditTextFirstName.imeOptions = EditorInfo.IME_ACTION_DONE
            firstNameChecker.setDoneAction { gotoMonth() }
        } else {
            lastNameChecker.setDoneAction { gotoMonth() }
            mNameContainer.removeView(mEditTextFirstName)
            mNameContainer.removeView(mErrorTextFirstName)
            mNameContainer.addView(mEditTextFirstName, 1)
            mNameContainer.addView(mErrorTextFirstName, 2)
            mEditTextLastName.imeOptions = EditorInfo.IME_ACTION_DONE
            mEditTextFirstName.imeOptions = EditorInfo.IME_ACTION_NEXT
        }
    }

    private fun gotoMonth() {
        if (mEditMonth.text?.isEmpty() == true) {
            mEditMonth.requestFocus()
            openMonthPickerDialog()
        }
    }

    private fun saveProfile() {
        val userProfile = UserProfile()
        userProfile.firstName = mEditTextFirstName.text.toString().trim()
        userProfile.lastName = mEditTextLastName.text.toString().trim()
        userProfile.dateOfBirth.monthInt = mMonth ?: -1
        userProfile.dateOfBirth.date = Integer.valueOf(mEditDate.text.toString())
        userProfile.dateOfBirth.year = Integer.valueOf(mEditYear.text.toString())
        userProfile.gender = mEditTextGender.text.toString()
        userProfile.genderIndex = mGenderIndex ?: -1
        SharedPreferenceHelper.setUserProfile(userProfile)
        if( SharedPreferenceHelper.getAppInit() ) {
            SHealthMonitorLogManager.sendLog("SHealthMonitorProfileEditActivity", SHealthMonitorLogManager.COMMON_PROFILE_SAVE_EDIT)
            setResult(Activity.RESULT_OK)
            finish()
        } else {
            val bpController = ControlManager.getInstance().getControllerInterface(ControlManager.SUPPORT_CONTROLLER_BP)
            if (bpController != null) {
                val node = NodeMonitor.getInstance().connectedBpNode
                if (node != null && node.connectionStatus == Node.ConnectionStatusValue.CONNECTED && bpController.information == null) {
                    waitForWearableInit(bpController)
                    return
                }
            }

            launchMainPage()
        }
    }

    private fun waitForWearableInit(@NonNull controlInterface: ControlInterface) {
        LOG.d(TAG, "waitForWearableInit()")
        showProgressBar(true)
        Thread(Runnable {
            val maxLoopCnt = 10
            for (i in 0..maxLoopCnt) {
                if (controlInterface.information != null) {
                    break
                }
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    LOG.e(TAG, "InterruptedException : $e")
                }
            }

            showProgressBar(false)
            if (controlInterface.information != null && isForeground) {
                launchMainPage()
            } else {
                LOG.e(TAG, "failed to launchMainPage(). information : " + (controlInterface.information != null) + ", isForeground : $isForeground")
            }
        }).start()
    }

    private fun launchMainPage() {
        LOG.d(TAG, "launchMainPage()")
        SharedPreferenceHelper.setAppInit(true)
        SHealthMonitorLogManager.getInstance().init(applicationContext as Application)
        startActivityByClassName("home",
                "SHealthMonitorMainActivity",
                Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
        SHealthMonitorLogManager.sendLog("SHealthMonitorProfileEditActivity", SHealthMonitorLogManager.COMMON_PROFILE_SAVE_INIT)
    }

    private fun updateView () {
        val userProfile = SharedPreferenceHelper.getUserProfile()

        mEditTextFirstName.setText(userProfile?.firstName)
        mEditTextLastName.setText(userProfile?.lastName)
        mEditMonth.setText( getMonthString( userProfile?.dateOfBirth?.monthInt))
        mMonth = userProfile?.dateOfBirth?.monthInt
        mEditDate.setText(userProfile?.dateOfBirth?.date?.toString())
        mEditYear.setText(userProfile?.dateOfBirth?.year?.toString())
        mGenderIndex = userProfile?.genderIndex
        if (mGenderIndex != null) {
            mEditTextGender.setText(mGenderList[mGenderIndex!!])
        }

        if( SharedPreferenceHelper.getAppInit() ) {
            mHeaderTextView.text = resources.getText(R.string.home_user_profile_edit_your_profile)
            mTermsAndConditions.visibility = View.GONE
            mFinishButton.text = resources.getText(R.string.home_user_profile_confirm_and_save)
        } else {
            mHeaderTextView.text = resources.getText(R.string.home_user_profile_create_your_profile)
        }
        updateEmptyField()
    }

    private fun initActionBar() {

        supportActionBar?.setHomeButtonEnabled(true)
        supportActionBar?.setDisplayShowCustomEnabled(false)
        supportActionBar?.title = ""

    }

    private fun startActivityByClassName(packageName: String, className: String, launchFlag: Int) {
        try {
            val activity = Class.forName("com.samsung.android.shealthmonitor.$packageName.ui.activity.$className")
            val intent = Intent(this, activity)
            intent.flags = launchFlag //Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
            if (mIsFirst) intent.putExtra(IntentAction.EXTRA_KEY_FROM_PROFILE, true)
            startActivity(intent)
        } catch (e: ClassNotFoundException) {
            LOG.e(TAG, " Exception : class not found = $e")
        } catch (e: IllegalStateException) {
            LOG.e(TAG, " Exception : illegal state exception = $e")
        }

    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
        }

        return super.onOptionsItemSelected(item)
    }

    private fun setAgreementArea() {
        SHealthMonitorPolicyViewer.setAnnotationForTncAndPrivacy(this, mTermsAndConditions)
    }

    private fun checkBirthDay(target : HEditText) : Boolean {
        return checkBirthDay(target, false)
    }

    private fun checkBirthDay(target : HEditText, force : Boolean) : Boolean {
        var year = MIN_YEAR
        var month = 0

        var ret = true

        if (!mEditYear.text.isNullOrEmpty()) {
            var targetYear = mEditYear.text.toString()
            if (isValidYearFormat(targetYear)) {
                year = Integer.parseInt(targetYear)
                mEditYear.removeErrorText()
            } else {
                if (target == mEditYear) {
                    ret = mEditYear.hasFocus() && mEditYear.length() < 4
                    if (force) {
                        mEditYear.setErrorText(resources.getString(R.string.shealth_monitor_profile_enter_a_valid_date_of_birth))
                    }
                }
            }
        }

        if (!mEditDate.text.isNullOrEmpty()) {
            val day = Integer.parseInt(mEditDate.text.toString())

            if (day == 0 && force) {
                mEditDate.setErrorText(resources.getString(R.string.shealth_monitor_profile_enter_a_valid_date_of_birth))
            } else if (mEditDate.hasFocus() && day == 0) {
                return true
            }

            if (mMonth != null && mMonth != -1) {
                month = mMonth!!
            }

            val cal = GregorianCalendar(year, month, 1)
            val dob = GregorianCalendar(year, month, day)

            if (day < 1 || day > cal.getActualMaximum(Calendar.DAY_OF_MONTH)
                || !Calendar.getInstance().after(dob)) {
                if (target != mEditYear) {
                    ret = false
                } else {
                    if (!ret) {
                        mEditDate.removeErrorText()
                        mEditMonth.removeErrorText()
                    } else {
                        val toDay = Calendar.getInstance()
                        toDay.timeInMillis = System.currentTimeMillis()
                        if (toDay.get(Calendar.MONTH) < month) {
                            mEditMonth.setErrorText(resources.getString(R.string.shealth_monitor_profile_enter_a_valid_date_of_birth))
                        } else {
                            mEditMonth.removeErrorText()
                        }
                        if (toDay.get(Calendar.DAY_OF_MONTH) < day) {
                            mEditDate.setErrorText(resources.getString(R.string.shealth_monitor_profile_enter_a_valid_date_of_birth))
                        } else {
                            mEditDate.removeErrorText()
                        }
                    }
                }
            } else {
                mEditDate.removeErrorText()
                mEditMonth.removeErrorText()
            }
        }

        return ret
    }

    private fun isValidNameFormat(value: String): Boolean {
        val pattern = Pattern.compile("[^\\W0-9]+\$")
        val parts = value.replace(" ","")

        return parts.isNotEmpty() && pattern.matcher(parts).matches()
    }

    private fun isValidYearFormat(year: String): Boolean {
        val userInput = Integer.parseInt(year)
        val currentYear = Calendar.getInstance().get(Calendar.YEAR)
        return userInput in MIN_YEAR..currentYear
    }

    private fun isNotEdited():Boolean {
        val userProfile: UserProfile = SharedPreferenceHelper.getUserProfile() ?: return false
        return (mEditTextFirstName.text.toString().compareTo(userProfile.firstName) ==0
                && mEditMonth.text.toString().compareTo(getMonthString(userProfile.dateOfBirth.monthInt)) == 0
                && mEditTextLastName.text.toString().compareTo(userProfile.lastName) == 0
                && mGenderIndex == userProfile.genderIndex
                && mEditYear.text.toString().compareTo(userProfile.dateOfBirth.year.toString()) == 0
                && mEditDate.text.toString().compareTo(userProfile.dateOfBirth.date.toString()) == 0)
    }

    private fun updateEmptyField() {
        var isEmpty = isNotEdited()

        if (mEditTextFirstName.text.isNullOrEmpty()
                || !isValidNameFormat(mEditTextFirstName.text.toString())) {
            isEmpty = true
        }

        if (mEditTextLastName.text.isNullOrEmpty()
                || !isValidNameFormat(mEditTextLastName.text.toString())) {
            isEmpty = true
        }

        if (mEditMonth.text.isNullOrEmpty()) {
            isEmpty = true
        }

        if (mEditDate.text.isNullOrEmpty()
                || mEditDate.isErrorStatus) {
            isEmpty = true
        }

        if (mEditYear.text.isNullOrEmpty()
                || mEditYear.isErrorStatus) {
            isEmpty = true
        }

        if (mEditTextGender.text.isNullOrEmpty()) {
            isEmpty = true
        }


        mFinishButton.isEnabled = !isEmpty
    }


    private fun showInapplicableDialog() {
        val fragment = supportFragmentManager.findFragmentByTag(DIALOG_TAG_INAPPLICABLE_POPUP)
        if (fragment != null && fragment.isVisible) {
            LOG.d(TAG, "openMonthPickerDialog is already visible")
            return
        }

        if (!isFinishing && !isDestroyed) {
            val builder = SAlertDlgFragment.Builder(R.string.shealth_monitor_profile_you_must_be_at_least_22_years_old,
                    SAlertDlgFragment.TYPE_P_BUTTON)

            builder.setContentText(R.string.shealth_monitor_profile_min_age_error_message)
            builder.setPositiveButtonTextColor(Color.parseColor("#5280f2"))
            builder.setPositiveButtonClickListener(R.string.baseui_button_ok) {saveProfile()}

            try {
                if (isForeground) builder.build().show(supportFragmentManager, DIALOG_TAG_INAPPLICABLE_POPUP)
            } catch (e: IllegalStateException) {

            }
        }
    }

    private fun openMonthPickerDialog() {
        val fragment = supportFragmentManager.findFragmentByTag(DIALOG_TAG_MONTH_PICKER_POPUP)
        if (fragment != null && fragment.isVisible) {
            LOG.d(TAG, "openMonthPickerDialog is already visible")
            return
        }

        if (!isFinishing && !isDestroyed) {
            val builder = MonthPickerDlgFragment.Builder(R.string.shealth_monitor_profile_select_month,
                    SAlertDlgFragment.TYPE_P_N_BUTTON)

//            builder.settContent(HNumberPicker(this))
            builder.setContentText(R.string.shealth_monitor_profile_min_age_error_message)
            builder.setPositiveButtonTextColor(Color.parseColor("#5280f2"))
            builder.setNegativeButtonTextColor(Color.parseColor("#5280f2"))

            builder.setPositiveButtonClickListener(R.string.baseui_button_save) {
                mEditMonth.setText( getMonthString(mMonth))
                updateEmptyField()
                if (mEditDate.text?.isEmpty() == true) {
                    mEditDate.postDelayed({
                        if (isForeground) {
                            SoftInputUtils.showSoftInput(this@SHealthMonitorProfileEditActivity, mEditDate)
                        }
                    }, 150)
                }
            }
            builder.setNegativeButtonClickListener(R.string.baseui_button_cancel){}
            builder.setSelectItemListener(mEditMonth.text.toString()) { month -> mMonth = month}
            try {
                if (isForeground) {
                    supportFragmentManager.beginTransaction().add(builder.build(), DIALOG_TAG_MONTH_PICKER_POPUP).commitAllowingStateLoss()
                }
            } catch (e: IllegalStateException) {

            }
        }
    }

    private fun openGenderPickerDialog() {
        val fragment = supportFragmentManager.findFragmentByTag(DIALOG_TAG_GENDER_PICKER_POPUP)
        if (fragment != null && fragment.isVisible) {
            LOG.d(TAG, "openGenderPickerDialog is already visible")
            return
        }

        if (mGenderList.isEmpty()) {
            LOG.d(TAG, "showCancellationReasonsDialog: No reasons listed")
            return
        }

        val checkedItems = BooleanArray(mGenderList.size)
        for (iterator in mGenderList.indices) {
            checkedItems[iterator] = mGenderList[iterator] == mEditTextGender.text.toString()
        }

        val builder = SListDlgFragment.Builder(R.string.shealth_monitor_profile_select_gender, SListDlgFragment.SINGLE_CHOOSE_WITH_BUTTON)
        builder.setSigleChoiceItemListener(mGenderList, checkedItems) { isChecked ->
            mGenderIndex = isChecked
            mGender = mGenderList[isChecked]
        }
        builder.setPositiveButtonTextColor(Color.parseColor("#5280f2"))
        builder.setNegativeButtonTextColor(Color.parseColor("#5280f2"))

        builder.setPositiveButtonClickListener(R.string.baseui_button_save) {
            mEditTextGender.setText(mGender)
            updateEmptyField()
        }
        builder.setDialogDismissListener {}
        try {
            if( supportFragmentManager != null) {
                if (isForeground) {
                    supportFragmentManager.beginTransaction().add(builder.build(), DIALOG_TAG_GENDER_PICKER_POPUP).commitAllowingStateLoss()
                }
            }
        } catch (e: IllegalStateException) {

        }

    }

    private fun getMonthString( month: Int?) : String {
        if( month == null || 0 > month || month > 11) {
            return ""
        }

        val symbols = DateFormatSymbols()
        val monthList = symbols.months
        return monthList[(month)]
    }
}