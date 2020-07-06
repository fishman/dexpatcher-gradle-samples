package com.samsung.android.shealthmonitor.ecg.manager;

import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController;
import com.samsung.android.shealthmonitor.ecg.helper.EcgSharedPreferenceHelper;
import com.samsung.android.shealthmonitor.util.LOG;

public class StateManager {
    private static final String TAG = "S HealthMonitor - StateManager";
    private static volatile StateManager mInstance;
    private CalibrationState mCalibrationState = CalibrationState.NONE;

    public static synchronized StateManager getInstance() {
        StateManager stateManager;
        synchronized (StateManager.class) {
            if (mInstance == null) {
                StateManager stateManager2 = new StateManager();
                mInstance = stateManager2;
                stateManager2.load();
            }
            stateManager = mInstance;
        }
        return stateManager;
    }

    private StateManager() {
    }

    public synchronized void reLoad() {
        LOG.d(TAG, "reLoad");
        load();
    }

    public synchronized void load() {
        String bpCalibrationState = EcgSharedPreferenceHelper.getEcgCalibrationState();
        if (bpCalibrationState == null) {
            setCalibrationState(CalibrationState.FIRST_READY);
        } else {
            setCalibrationState(CalibrationState.valueOf(bpCalibrationState));
        }
        int elapsedDaysOfCalibration = BpReCalibrationController.getElapsedDaysOfCalibration();
        if (elapsedDaysOfCalibration != -1) {
            LOG.d(TAG, "continuousStepTime, elapsedDays : " + elapsedDaysOfCalibration);
            if (elapsedDaysOfCalibration >= 3) {
                BpReCalibrationController.resetCalibrationStepTime();
            }
        }
        LOG.d(TAG, "load previousState " + this.mCalibrationState.name());
    }

    public synchronized CalibrationState getCurrentState() {
        return this.mCalibrationState;
    }

    public synchronized void setCalibrationState(CalibrationState calibrationState) {
        LOG.d(TAG, " [setCalibrationState] state " + calibrationState.name());
        this.mCalibrationState = calibrationState;
    }

    public synchronized CalibrationState prev() {
        setCalibrationState(this.mCalibrationState.previousState());
        LOG.d(TAG, "move previousState " + this.mCalibrationState.name());
        if (this.mCalibrationState.save()) {
            LOG.d(TAG, "save " + this.mCalibrationState.name());
        }
        return this.mCalibrationState;
    }

    public synchronized CalibrationState next() {
        setCalibrationState(this.mCalibrationState.nextState());
        LOG.d(TAG, "move nextState " + this.mCalibrationState.name());
        if (this.mCalibrationState.save()) {
            LOG.d(TAG, "save " + this.mCalibrationState.name());
        }
        return this.mCalibrationState;
    }

    public synchronized CalibrationState gotoInitSate() {
        setCalibrationState(this.mCalibrationState.initState());
        LOG.d(TAG, "move init sate " + this.mCalibrationState.name());
        if (this.mCalibrationState.save()) {
            LOG.d(TAG, "save " + this.mCalibrationState.name());
        }
        return this.mCalibrationState;
    }

    public static void settingForCompletedCalibration(long j) {
        BpReCalibrationController.initBpRecalibrationSchedule(j);
        EcgSharedPreferenceHelper.setInitialCalibrationComplete(true);
    }
}
