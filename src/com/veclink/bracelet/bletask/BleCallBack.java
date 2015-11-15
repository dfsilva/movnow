// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.os.Handler;
import android.os.Message;

public class BleCallBack
{

    public static final int CANNOT_CONNECT_DEVICES = 1007;
    public static final int CANNOT_SUPPPORT_OTA_UPDATE = 1008;
    public static final int DEVICE_CONNECTED = 1005;
    public static final int DEVICE_DISCONNECTED = 1004;
    public static final int TASK_FAILED = 1001;
    public static final int TASK_FINISH = 1003;
    public static final int TASK_PROGRESS = 1002;
    public static final int TASK_START = 1000;
    public static final int TASK_SYNCSTEPDATA_FINISH = 1009;
    public static final int TASK_TIMEOUT = 1006;
    private Handler mHandler;

    public BleCallBack()
    {
    }

    public BleCallBack(Handler handler)
    {
        mHandler = handler;
    }

    private void sendMessage(int i, Object obj)
    {
        if (mHandler != null)
        {
            Message message = mHandler.obtainMessage(i);
            message.obj = obj;
            mHandler.sendMessage(message);
        }
    }

    public Handler getmHandler()
    {
        return mHandler;
    }

    public void onFailed(Object obj)
    {
    }

    public void onFinish(Object obj)
    {
    }

    public void onProgress(int i)
    {
    }

    public void onStart()
    {
    }

    public void sendCanNotConnectDeviceMessage()
    {
        sendMessage(1007, Integer.valueOf(0));
    }

    public void sendCanNotSupportOTAUpdate()
    {
        sendMessage(1008, Integer.valueOf(0));
    }

    public void sendOnDeviceConnectedMessage(Object obj)
    {
        sendMessage(1005, obj);
    }

    public void sendOnDeviceDisConnectedMessage(Object obj)
    {
        sendMessage(1004, obj);
    }

    public void sendOnFialedMessage(Object obj)
    {
        sendMessage(1001, obj);
    }

    public void sendOnFinishMessage(Object obj)
    {
        sendMessage(1003, obj);
    }

    public void sendOnProgressMessage(Object obj)
    {
        sendMessage(1002, obj);
    }

    public void sendOnStartMessage(Object obj)
    {
        sendMessage(1000, obj);
    }

    public void sendOnSyncStepDataFinish(Object obj)
    {
        sendMessage(1009, obj);
    }

    public void sendOnTaskTimeOutMessage(Object obj)
    {
        sendMessage(1006, obj);
    }

    public void setmHandler(Handler handler)
    {
        mHandler = handler;
    }
}
