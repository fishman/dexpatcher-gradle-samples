package com.samsung.android.shealthmonitor.ecg.manager;

import android.content.Context;
import com.samsung.android.shealthmonitor.bp.R;
import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController;
import com.samsung.android.shealthmonitor.ecg.helper.EcgSharedPreferenceHelper;
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorCompleteView;
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorStepCuffWearingVideoView;
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorStepCuffWearingView;
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorStepEmptyView;
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorStepMeasureMonitorView;
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorStepStartView;
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorStepView;
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorStepWatchWearingVideoView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CalibrationState.kt */
public enum CalibrationState {
    NONE {
		@Override
        public final int getCalibrationCount() {
            return 0;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return false;
        }

		@Override
        public final boolean save() {
            return false;
        }

		@Override
        public final CalibrationState previousState() {
            return this;
        }

		@Override
        public final CalibrationState nextState() {
            return this;
        }

		@Override
        public final CalibrationState initState() {
            return this;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorStepEmptyView(context);
        }
    },
    FIRST_READY {
		@Override
        public final int getCalibrationCount() {
            return 1;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final boolean save() {
            return false;
        }

		@Override
        public final CalibrationState previousState() {
            return CalibrationState.NONE;
        }

		@Override
        public final CalibrationState nextState() {
            // return CalibrationState.FIRST_1_STEP;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.NONE;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorStepWatchWearingVideoView(context);
        }
    },

    FIRST_1_STEP {
		@Override
        public final int getCalibrationCount() {
            return 1;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final boolean save() {
            return false;
        }

		@Override
        public final CalibrationState previousState() {
            return CalibrationState.FIRST_READY;
        }

		@Override
        public final CalibrationState nextState() {
            // return CalibrationState.FIRST_2_STEP;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.FIRST_READY;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorCompleteView(context);
        }
		// @Override
        // public final SHealthMonitorStepView responsibleView(Context context) {
            // Intrinsics.checkParameterIsNotNull(context, "context");
            // return new SHealthMonitorStepCuffWearingVideoView(context, 0, 2, (DefaultConstructorMarker) null);
        // }
    },

    FIRST_2_STEP {
		@Override
        public final int getCalibrationCount() {
            return 1;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final boolean save() {
            return false;
        }

		@Override
        public final CalibrationState previousState() {
            return CalibrationState.FIRST_1_STEP;
        }

		@Override
        public final CalibrationState nextState() {
            // return CalibrationState.FIRST_DONE;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.FIRST_READY;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorStepMeasureMonitorView(context);
        }
    },

    FIRST_DONE {
		@Override
        public final int getCalibrationCount() {
            return 2;
        }

		@Override
        public final boolean hasMenu() {
            return true;
        }

		@Override
        public final boolean isPossibleBack() {
            return false;
        }

		@Override
        public final CalibrationState previousState() {
            return CalibrationState.NONE;
        }

		@Override
        public final CalibrationState nextState() {
            // CalibrationState.SECOND_1_STEP.setPreviousStep(this);
            // return CalibrationState.SECOND_1_STEP;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.NONE;
        }

		@Override
        public final boolean save() {
            EcgSharedPreferenceHelper.setEcgCalibrationState(CalibrationState.SECOND_READY_STEP.name());
            EcgSharedPreferenceHelper.setEcgCurrentCalibrationStepTime(System.currentTimeMillis());
            BpReCalibrationController.initBpCalibrationNoti();
            return true;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorCompleteView(context);
        }
		// @Override
        // public final SHealthMonitorStepView responsibleView(Context context) {
            // Intrinsics.checkParameterIsNotNull(context, "context");
            // return new SHealthMonitorStepStartView(context, this);
        // }
    },

    SECOND_READY_STEP {
		@Override
        public final int getCalibrationCount() {
            return 2;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final CalibrationState previousState() {
            return CalibrationState.NONE;
        }

		@Override
        public final CalibrationState nextState() {
            // CalibrationState.SECOND_1_STEP.setPreviousStep(this);
            // return CalibrationState.SECOND_1_STEP;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.NONE;
        }

		@Override
        public final boolean save() {
            EcgSharedPreferenceHelper.setEcgCalibrationState(name());
            return true;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorStepWatchWearingVideoView(context);
        }
    },

    SECOND_1_STEP {
		@Override
        public final int getCalibrationCount() {
            return 2;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final boolean save() {
            return false;
        }

		@Override
        public final CalibrationState nextState() {
            // CalibrationState.SECOND_2_STEP.setPreviousStep(this);
            // return CalibrationState.SECOND_2_STEP;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.FIRST_DONE;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorCompleteView(context);
        }
		// @Override
        // public final SHealthMonitorStepView responsibleView(Context context) {
            // Intrinsics.checkParameterIsNotNull(context, "context");
            // if (previousState() == CalibrationState.SECOND_READY_STEP) {
                // return new SHealthMonitorStepCuffWearingVideoView(context, 0, 2, (DefaultConstructorMarker) null);
            // }
            // return new SHealthMonitorStepCuffWearingView(context, R.string.shealth_monitor_calibration_measurement_finish_get_ready_body);
        // }
    },

    SECOND_2_STEP {
		@Override
        public final int getCalibrationCount() {
            return 2;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final boolean save() {
            return false;
        }

		@Override
        public final CalibrationState nextState() {
            // return CalibrationState.SECOND_DONE;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.SECOND_1_STEP;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorStepMeasureMonitorView(context);
        }
    },

    SECOND_DONE {
		@Override
        public final int getCalibrationCount() {
            return 3;
        }

		@Override
        public final boolean hasMenu() {
            return true;
        }

		@Override
        public final boolean isPossibleBack() {
            return false;
        }

		@Override
        public final CalibrationState previousState() {
            return CalibrationState.NONE;
        }

		@Override
        public final CalibrationState nextState() {
            // CalibrationState.THIRD_1_STEP.setPreviousStep(this);
            // return CalibrationState.THIRD_1_STEP;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.NONE;
        }

		@Override
        public final boolean save() {
            EcgSharedPreferenceHelper.setEcgCalibrationState(CalibrationState.THIRD_READY_STEP.name());
            return true;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorCompleteView(context);
        }
		// @Override
        // public final SHealthMonitorStepView responsibleView(Context context) {
            // Intrinsics.checkParameterIsNotNull(context, "context");
            // return new SHealthMonitorStepStartView(context, this);
        // }
    },

    THIRD_READY_STEP {
		@Override
        public final int getCalibrationCount() {
            return 3;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final CalibrationState previousState() {
            return CalibrationState.NONE;
        }

		@Override
        public final CalibrationState nextState() {
            // CalibrationState.THIRD_1_STEP.setPreviousStep(this);
            // return CalibrationState.THIRD_1_STEP;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.NONE;
        }

		@Override
        public final boolean save() {
            EcgSharedPreferenceHelper.setEcgCalibrationState(name());
            return true;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorStepWatchWearingVideoView(context);
        }
    },
    THIRD_1_STEP {
		@Override
        public final int getCalibrationCount() {
            return 3;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final boolean save() {
            return false;
        }

		@Override
        public final CalibrationState nextState() {
            // CalibrationState.THIRD_2_STEP.setPreviousStep(this);
            // return CalibrationState.THIRD_2_STEP;
			return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.SECOND_DONE;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorCompleteView(context);
        }
		// @Override
        // public final SHealthMonitorStepView responsibleView(Context context) {
            // Intrinsics.checkParameterIsNotNull(context, "context");
            // if (previousState() == CalibrationState.THIRD_READY_STEP) {
                // return new SHealthMonitorStepCuffWearingVideoView(context, 0, 2, (DefaultConstructorMarker) null);
            // }
            // return new SHealthMonitorStepCuffWearingView(context, R.string.shealth_monitor_calibration_measurement_finish_get_ready_body);
        // }
    },
    THIRD_2_STEP {
		@Override
        public final int getCalibrationCount() {
            return 3;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return true;
        }

		@Override
        public final boolean save() {
            return false;
        }

		@Override
        public final CalibrationState nextState() {
            return CalibrationState.CALIBRATION_DONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.THIRD_1_STEP;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorStepMeasureMonitorView(context);
        }
    },

    CALIBRATION_DONE {
		@Override
        public final int getCalibrationCount() {
            return 4;
        }

		@Override
        public final boolean hasMenu() {
            return false;
        }

		@Override
        public final boolean isPossibleBack() {
            return false;
        }

		@Override
        public final CalibrationState previousState() {
            return CalibrationState.NONE;
        }

		@Override
        public final CalibrationState nextState() {
            return CalibrationState.NONE;
        }

		@Override
        public final CalibrationState initState() {
            return CalibrationState.NONE;
        }

		@Override
        public final boolean save() {
            EcgSharedPreferenceHelper.setEcgCalibrationState(name());
            EcgSharedPreferenceHelper.setEcgCurrentCalibrationStepTime(-1);
            BpReCalibrationController.removeBpCalibrationNoti();
            return true;
        }

		@Override
        public final SHealthMonitorStepView responsibleView(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new SHealthMonitorCompleteView(context);
        }
    },
	;
    
    private CalibrationState mPreviousStep;

    public abstract int getCalibrationCount();

    public abstract boolean hasMenu();

    public abstract CalibrationState initState();

    public abstract boolean isPossibleBack();

    public abstract CalibrationState nextState();

    public abstract SHealthMonitorStepView responsibleView(Context context);

    public abstract boolean save();


    public CalibrationState getMPreviousStep() {
        return this.mPreviousStep;
    }

    public void setMPreviousStep(CalibrationState calibrationState) {
        this.mPreviousStep = calibrationState;
    }

    public void setPreviousStep(CalibrationState calibrationState) {
        Intrinsics.checkParameterIsNotNull(calibrationState, "state");
        setMPreviousStep(calibrationState);
    }

    public CalibrationState previousState() {
        if (getMPreviousStep() == null) {
            return NONE;
        }
        CalibrationState mPreviousStep2 = getMPreviousStep();
        if (mPreviousStep2 == null) {
            Intrinsics.throwNpe();
        }
        return mPreviousStep2;
    }
}
