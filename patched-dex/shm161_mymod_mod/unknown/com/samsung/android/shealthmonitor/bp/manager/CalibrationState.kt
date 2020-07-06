package com.samsung.android.shealthmonitor.bp.manager

import android.content.Context
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController
import com.samsung.android.shealthmonitor.bp.helper.BpSharedPreferenceHelper
import com.samsung.android.shealthmonitor.bp.ui.view.*

enum class CalibrationState {

    NONE {
        override fun previousState(): CalibrationState {
            return NONE
        }
        override fun nextState(): CalibrationState {
            return NONE
        }
        override fun initState(): CalibrationState {
            return NONE
        }
        override fun isPossibleBack(): Boolean {
            return false
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 0
        }
        override fun save() : Boolean {
            return false
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorStepEmptyView(context)
        }
    },
    FIRST_READY {
        override fun previousState(): CalibrationState {
            return NONE
        }
        override fun nextState(): CalibrationState {
            return FIRST_1_STEP
        }
        override fun initState(): CalibrationState {
            return NONE
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 1
        }
        override fun save() : Boolean {
            return false
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorStepWatchWearingVideoView(context)
        }
    },
    FIRST_1_STEP {
        override fun previousState(): CalibrationState {
            return FIRST_READY
        }
        override fun nextState(): CalibrationState {
            return FIRST_2_STEP
        }
        override fun initState(): CalibrationState {
            return FIRST_READY
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 1
        }
        override fun save() : Boolean {
            return false
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorStepCuffWearingVideoView(context)
        }
    },
    FIRST_2_STEP {
        override fun previousState(): CalibrationState {
            return FIRST_1_STEP
        }
        override fun nextState(): CalibrationState {
            return FIRST_DONE
        }
        override fun initState(): CalibrationState {
            return FIRST_READY
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 1
        }
        override fun save() : Boolean {
            return false
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorStepMeasureMonitorView(context)
        }
    },
    FIRST_DONE  {
        override fun previousState(): CalibrationState {
            return NONE
        }
        override fun nextState(): CalibrationState {
            SECOND_1_STEP.setPreviousStep(FIRST_DONE)
            return SECOND_1_STEP
        }
        override fun initState(): CalibrationState {
            return NONE
        }
        override fun isPossibleBack(): Boolean {
            return false
        }
        override fun hasMenu(): Boolean {
            return true
        }
        override fun getCalibrationCount() : Int {
            return 2
        }
        override fun save() : Boolean {
            BpSharedPreferenceHelper.setBpCalibrationState(SECOND_READY_STEP.name)
            BpSharedPreferenceHelper.setBpCurrentCalibrationStepTime(System.currentTimeMillis())
            BpReCalibrationController.initBpCalibrationNoti()
            return true
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            val view = SHealthMonitorStepStartView(context, FIRST_DONE)
            return view
        }
    },
    SECOND_READY_STEP {
        override fun previousState(): CalibrationState {
            return NONE
        }
        override fun nextState(): CalibrationState {
            SECOND_1_STEP.setPreviousStep(SECOND_READY_STEP)
            return SECOND_1_STEP
        }
        override fun initState(): CalibrationState {
            return NONE
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 2
        }
        override fun save() : Boolean {
            BpSharedPreferenceHelper.setBpCalibrationState(name)
            return true
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorStepWatchWearingVideoView(context)
        }
    },
    SECOND_1_STEP  {
        override fun nextState(): CalibrationState {
            SECOND_2_STEP.setPreviousStep(SECOND_1_STEP)
            return SECOND_2_STEP
        }
        override fun initState(): CalibrationState {
            return FIRST_DONE
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 2
        }
        override fun save() : Boolean {
            return false
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            if (previousState() == SECOND_READY_STEP) {
                return SHealthMonitorStepCuffWearingVideoView(context)
            } else {
                return SHealthMonitorStepCuffWearingView(context, R.string.shealth_monitor_calibration_measurement_finish_get_ready_body)
            }
        }
    },
    SECOND_2_STEP  {
        override fun nextState(): CalibrationState {
            return SECOND_DONE
        }
        override fun initState(): CalibrationState {
            return SECOND_1_STEP
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 2
        }
        override fun save() : Boolean {
            return false
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorStepMeasureMonitorView(context)
        }
    },
    SECOND_DONE {
        override fun previousState(): CalibrationState {
            return NONE
        }
        override fun nextState(): CalibrationState {
            THIRD_1_STEP.setPreviousStep(SECOND_DONE)
            return THIRD_1_STEP
        }
        override fun initState(): CalibrationState {
            return NONE
        }
        override fun isPossibleBack(): Boolean {
            return false
        }
        override fun hasMenu(): Boolean {
            return true
        }
        override fun getCalibrationCount() : Int {
            return 3
        }
        override fun save() : Boolean {
            BpSharedPreferenceHelper.setBpCalibrationState(THIRD_READY_STEP.name)
            return true
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            val view = SHealthMonitorStepStartView(context, SECOND_DONE)
            return view
        }
    },
    THIRD_READY_STEP {
        override fun previousState(): CalibrationState {
            return NONE
        }
        override fun nextState(): CalibrationState {
            THIRD_1_STEP.setPreviousStep(THIRD_READY_STEP)
            return THIRD_1_STEP
        }
        override fun initState(): CalibrationState {
            return NONE
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 3
        }
        override fun save() : Boolean {
            BpSharedPreferenceHelper.setBpCalibrationState(name)
            return true
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorStepWatchWearingVideoView(context)
        }
    },
    THIRD_1_STEP {
        override fun nextState(): CalibrationState {
            THIRD_2_STEP.setPreviousStep(THIRD_1_STEP)
            return THIRD_2_STEP
        }
        override fun initState(): CalibrationState {
            return SECOND_DONE
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 3
        }
        override fun save() : Boolean {
            return false
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            if (previousState() == THIRD_READY_STEP) {
                return SHealthMonitorStepCuffWearingVideoView(context)
            } else {
                return SHealthMonitorStepCuffWearingView(context, R.string.shealth_monitor_calibration_measurement_finish_get_ready_body)
            }
        }
    },
    THIRD_2_STEP {
        override fun nextState(): CalibrationState {
            return CALIBRATION_DONE
        }
        override fun initState(): CalibrationState {
            return THIRD_1_STEP
        }
        override fun isPossibleBack(): Boolean {
            return true
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 3
        }
        override fun save() : Boolean {
            return false
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorStepMeasureMonitorView(context)
        }
    },
    CALIBRATION_DONE {
        override fun previousState(): CalibrationState {
            return NONE
        }
        override fun nextState(): CalibrationState {
            return NONE
        }
        override fun initState(): CalibrationState {
            return NONE
        }
        override fun isPossibleBack(): Boolean {
            return false
        }
        override fun hasMenu(): Boolean {
            return false
        }
        override fun getCalibrationCount() : Int {
            return 4
        }
        override fun save() : Boolean {
            BpSharedPreferenceHelper.setBpCalibrationState(name)
            BpSharedPreferenceHelper.setBpCurrentCalibrationStepTime(-1)
            BpReCalibrationController.removeBpCalibrationNoti()
            return true
        }
        override fun responsibleView(context : Context): SHealthMonitorStepView {
            return SHealthMonitorCompleteView(context)
        }
    };

    open var mPreviousStep : CalibrationState? = null
    open fun setPreviousStep (state : CalibrationState) {
        mPreviousStep = state
    }

    open fun previousState() : CalibrationState {
        if (mPreviousStep == null) {
            return NONE
        } else {
            return mPreviousStep!!
        }
    }

    abstract fun nextState(): CalibrationState
    abstract fun initState(): CalibrationState
    abstract fun save() : Boolean
    abstract fun responsibleView(context : Context): SHealthMonitorStepView
    abstract fun isPossibleBack() : Boolean
    abstract fun hasMenu() : Boolean
    abstract fun getCalibrationCount() : Int

}