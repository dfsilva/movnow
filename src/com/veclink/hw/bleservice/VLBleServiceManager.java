// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bleservice.profile.BaseGattAttributes;
import com.veclink.hw.bleservice.profile.BraceletGattAttributes;
import com.veclink.hw.bleservice.util.Keeper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.veclink.hw.bleservice:
//            VLBleService, DeviceReponseObserver

public class VLBleServiceManager
{

    private static final String TAG = com/veclink/hw/bleservice/VLBleServiceManager.getSimpleName();
    private static Application application;
    public static BaseGattAttributes gattAttributes;
    private static boolean isAutoReConnect;
    private static VLBleService mBleService;
    private static String mDeviceAddress;
    private static final ServiceConnection mServiceConnection = new ServiceConnection() {

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            try
            {
                VLBleServiceManager.mBleService = ((VLBleService.LocalBinder)ibinder).getService();
                VLBleServiceManager.vlBleServiceManager.updatePostExceute();
            }
            // Misplaced declaration of an exception variable
            catch (ComponentName componentname)
            {
                VLBleServiceManager.vlBleServiceManager.unBindService(VLBleServiceManager.application);
                VLBleServiceManager.vlBleServiceManager.bindService(VLBleServiceManager.application, VLBleServiceManager.gattAttributes);
                return;
            }
            if (VLBleServiceManager.observer != null)
            {
                VLBleServiceManager.mBleService.registerObserver(VLBleServiceManager.observer);
                VLBleServiceManager.mBleService.setAutoReConnect(VLBleServiceManager.isAutoReConnect);
            }
            VLBleServiceManager.mDeviceAddress = Keeper.getBindDeviceMacAddress(VLBleServiceManager.application);
            if (!VLBleServiceManager.mDeviceAddress.equals(""))
            {
                if (!VLBleServiceManager.mBleService.initialize())
                {
                    Log.e(VLBleServiceManager.TAG, "Unable to initialize Bluetooth");
                }
                VLBleServiceManager.mBleService.connect(VLBleServiceManager.mDeviceAddress);
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            VLBleServiceManager.mBleService = null;
        }

    };
    private static DeviceReponseObserver observer;
    private static VLBleServiceManager vlBleServiceManager;

    private VLBleServiceManager()
    {
    }

    public static VLBleServiceManager getInstance()
    {
        if (vlBleServiceManager == null)
        {
            vlBleServiceManager = new VLBleServiceManager();
        }
        return vlBleServiceManager;
    }

    public static void registerObserver(DeviceReponseObserver devicereponseobserver)
    {
        if (mBleService != null)
        {
            mBleService.unRegisterObserver(devicereponseobserver);
            return;
        } else
        {
            observer = devicereponseobserver;
            return;
        }
    }

    public static void setAutoReConnect(boolean flag)
    {
        isAutoReConnect = flag;
        if (mBleService != null)
        {
            mBleService.setAutoReConnect(flag);
        }
    }

    public static void unRegisterObserver(DeviceReponseObserver devicereponseobserver)
    {
        if (mBleService != null)
        {
            mBleService.unRegisterObserver(devicereponseobserver);
        }
    }

    public void acquirePowerLock()
    {
        if (mBleService != null)
        {
            mBleService.acquirePowerLock();
        }
    }

    public void bindService(Application application1)
    {
        BleTask.taskExecutorService = Executors.newSingleThreadExecutor();
        application = application1;
        gattAttributes = new BraceletGattAttributes();
        if (mBleService != null)
        {
            mBleService.disconnect();
            mBleService.close();
        }
        application1.bindService(new Intent(application1, com/veclink/hw/bleservice/VLBleService), mServiceConnection, 1);
    }

    public void bindService(Application application1, BaseGattAttributes basegattattributes)
    {
        BleTask.taskExecutorService = Executors.newSingleThreadExecutor();
        application = application1;
        gattAttributes = basegattattributes;
        if (mBleService != null)
        {
            mBleService.disconnect();
            mBleService.close();
        }
        application1.bindService(new Intent(application1, com/veclink/hw/bleservice/VLBleService), mServiceConnection, 1);
    }

    public void cancelAllBleTask()
    {
        if (BleTask.taskExecutorService != null)
        {
            BleTask.taskExecutorService.shutdownNow();
        }
    }

    public void disConnectDevice()
    {
        if (mBleService != null)
        {
            mBleService.disconnect();
        }
        unBindService(application);
    }

    public void flagDoUpdateNotDoOtherTask()
    {
        BleTask.updateing = true;
    }

    public VLBleService getVLBleService()
    {
        return mBleService;
    }

    public void reConnectDevice()
    {
        unBindService(application);
        bindService(application);
    }

    public void releasePowerLock()
    {
        if (mBleService != null)
        {
            mBleService.releasePowerLock();
        }
    }

    public void unBindService(Application application1)
    {
        if (BleTask.taskExecutorService != null)
        {
            BleTask.taskExecutorService.shutdownNow();
            BleTask.taskExecutorService = null;
        }
        if (mBleService == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        setAutoReConnect(false);
        application1.unbindService(mServiceConnection);
        mBleService.disconnect();
        mBleService.close();
        mBleService = null;
        application1.stopService(new Intent(application1, com/veclink/hw/bleservice/VLBleService));
        return;
        application1;
        application1.printStackTrace();
        return;
    }

    public void updatePostExceute()
    {
        BleTask.updateing = false;
    }




/*
    static VLBleService access$002(VLBleService vlbleservice)
    {
        mBleService = vlbleservice;
        return vlbleservice;
    }

*/







/*
    static String access$502(String s)
    {
        mDeviceAddress = s;
        return s;
    }

*/

}
