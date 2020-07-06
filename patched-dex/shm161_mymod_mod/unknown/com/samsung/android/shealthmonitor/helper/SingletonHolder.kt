package com.samsung.android.shealthmonitor.helper


open class SingletonHolder<out T: Any>(creator: () -> T) {

    private var creator: (() -> T) = creator

    @Volatile private var mInstance: T? = null

    fun getInstance(): T {

        val instance = mInstance
        if(instance != null) {
            return instance
        }

        synchronized(this) {

            val instance2 = mInstance

            if(instance2 != null) {
                return instance2
            } else {
                val created = creator()
                mInstance = created
                return created
            }
        }
    }
}
