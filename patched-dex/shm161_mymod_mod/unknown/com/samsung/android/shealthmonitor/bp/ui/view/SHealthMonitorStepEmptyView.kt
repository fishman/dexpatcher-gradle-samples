package com.samsung.android.shealthmonitor.bp.ui.view


import android.content.Context
import android.view.View


class SHealthMonitorStepEmptyView (context: Context) : SHealthMonitorStepView(context){

    var mBackground : Int

    init {
        var layout : Int = -1
        mBackground = -1

        View.inflate(context, layout, this)
    }

    override fun setAbNextListener(listener: OnClickListener) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun setAbPrevListener(listener: OnClickListener) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun getBackgroundDrawableId(): Int {
        return mBackground
    }

    override fun onBack() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
}
