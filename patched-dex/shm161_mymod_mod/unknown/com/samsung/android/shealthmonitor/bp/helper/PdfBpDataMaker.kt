package com.samsung.android.shealthmonitor.bp.helper

import android.content.Context
import com.samsung.android.shealthmonitor.bp.roomdata.manager.DataRoomBpManager
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomConstants
import com.samsung.android.shealthmonitor.dataroom.manager.DataRoomManager
import com.samsung.android.shealthmonitor.helper.SharedPreferenceHelper
import com.samsung.android.shealthmonitor.helper.pdf.PdfDataMakerInterface
import com.samsung.android.shealthmonitor.util.calendar.BaseDateUtils
import org.json.JSONObject
import java.util.*

class PdfBpDataMaker : PdfDataMakerInterface<BpPdfInfo> {

    override fun makePdfDataForDisplay(context: Context, startTime : Long) : BpPdfInfo {
        val bloodPressureDataList = DataRoomBpManager.getInstance().getBloodPressureDataSync(startTime, System.currentTimeMillis(),
                DataRoomConstants.Common.START_TIME, " ASC")

        val userProfile = SharedPreferenceHelper.getUserProfile()

        val name = let {
            if ("KR".equals(Locale.getDefault().country, ignoreCase = true)) {
                userProfile.lastName + " " + userProfile.firstName
            } else {
                userProfile.firstName + " " + userProfile.lastName
            }
        }

        val birthDayTime = BaseDateUtils.getTime(userProfile.dateOfBirth.year, userProfile.dateOfBirth.monthInt ,userProfile.dateOfBirth.date)
        val birthDay = BaseDateUtils.getDateTime(birthDayTime, BaseDateUtils.Type.DATE_TIME_YEAR)
        val gender = userProfile.gender

        var bpPdfInfo = BpPdfInfo(name, birthDay, gender)

        var maxTimestamp = 0L
        var deviceUuidList = java.util.ArrayList<BpDeviceCalSet>()
        var minTimestamp = Long.MAX_VALUE
        var previousDeviceId : String? = null

        for (bpData in bloodPressureDataList) {

            val dateStr = BaseDateUtils.getDateTime(bpData.startTime, BaseDateUtils.Type.DATE_MONTH_DAY)
            val timeStr = BaseDateUtils.getDateTime(bpData.startTime, BaseDateUtils.Type.DATE_TIME)
            bpPdfInfo.mBpDataList.add(BpData(dateStr, timeStr, bpData.systolic, bpData.diastole, bpData.heartRate, bpData.comment))

            if (previousDeviceId != bpData.deviceUuid) {
                val set = BpDeviceCalSet(bpData.deviceUuid, bpData.startTime, bpData.calUuid)
                deviceUuidList.add(set)
                previousDeviceId = bpData.deviceUuid
            }

            //for make period data string
            if (maxTimestamp < bpData.startTime) {
                maxTimestamp = bpData.startTime
            }

            if (bpData.startTime < minTimestamp ) {
                minTimestamp = bpData.startTime
            }
            //end for make period data string
        }

        //make period data string
        var startStr = BaseDateUtils.getDateTime(minTimestamp, BaseDateUtils.Type.DATE_TIME_YEAR)
        var endStr = BaseDateUtils.getDateTime(maxTimestamp, BaseDateUtils.Type.DATE_TIME_YEAR)
        bpPdfInfo.mPeriodDateStr = "$startStr ~ $endStr"
        //end make period data string

        //3. make Accessories data
        var previousBpDeviceInfo : BpDeviceInfo? = null
        for ( deviceUuidEntry in deviceUuidList){
            val deviceInfo = DataRoomManager.getInstance().getDataSyncByDeviceId(deviceUuidEntry.getDeviceId())
            val calibrationInfo = DataRoomBpManager.getInstance().getCalibrationConfigDataSync(deviceUuidEntry.getCalibrationId())

            val capabilityObj = JSONObject(String(deviceInfo.capability))
            val deviceNickname  = capabilityObj.getString("device_nick_name")

            val calibrationTime = BaseDateUtils.getDateTime(calibrationInfo.startTime, BaseDateUtils.Type.DATE_TIME_YEAR)

            val bpDeviceInfo = BpDeviceInfo(deviceNickname, deviceUuidEntry.getStartTime(), calibrationTime)
            if (previousBpDeviceInfo != null) {
                previousBpDeviceInfo.updateDayOfUse(deviceUuidEntry.getStartTime())
            }
            previousBpDeviceInfo = bpDeviceInfo
            bpPdfInfo.mBpDeviceList.add(bpDeviceInfo)
        }

        if (previousBpDeviceInfo != null) {
            previousBpDeviceInfo.updateDayOfUse(-1)
        }
        //last calibration date

        return bpPdfInfo
    }
}


//temp info class
class BpDeviceCalSet (deviceId : String, startTime : Long, calibrationId : String) {
    val mDeviceId = deviceId
    val mStartTime = startTime
    val mCalibrationId =  calibrationId

    fun getDeviceId() : String {
        return mDeviceId
    }

    fun getStartTime() : Long {
        return mStartTime
    }

    fun getCalibrationId() : String {
        return mCalibrationId
    }

}

class BpPdfInfo (name : String, birthday : String, gender : String,
                 periodDateStr : String = "", lastCalibration : String = "") {
    var mName = name
    var mBirthDay = birthday
    var mGender = gender
    var mPeriodDateStr = periodDateStr
    var mLastCalibrationDateStr = lastCalibration
    var mBpDataList : ArrayList<BpData> = ArrayList()
    var mBpDeviceList : ArrayList<BpDeviceInfo> = ArrayList()
}

class BpData (date : String, time : String, sys : Int, dias : Int, pulse : Int, notes: String) {

    var mDate = date
    var mTime = time
    var mSystolic = sys
    var mDiastolic = dias
    var mPulseRate = pulse
    var mNotes = notes

}

class BpDeviceInfo(deviceNickname : String, startTime : Long, lastCalibrationDate : String) {
    var mDeviceNickname = deviceNickname
    var mLastCalibrationDate = lastCalibrationDate
    var mStartTime = startTime
    var mEndTime = -1L
    var mDayOfUse = ""

    fun updateDayOfUse(endTime : Long) {

        mEndTime = endTime
        val startStr : String
        val endStr : String

        if ( mEndTime == -1L) {
            startStr = BaseDateUtils.getDateTime(mStartTime, BaseDateUtils.Type.DATE_TIME_YEAR)
            endStr = mLastCalibrationDate
        } else {
            startStr = BaseDateUtils.getDateTime(mStartTime, BaseDateUtils.Type.DATE_TIME_YEAR)
            endStr = BaseDateUtils.getDateTime(mEndTime, BaseDateUtils.Type.DATE_TIME_YEAR)
        }

        mDayOfUse = "$startStr ~ $endStr"
    }

}