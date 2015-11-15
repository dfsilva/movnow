// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import android.util.Log;
import com.veclink.bracelet.bean.TemperatureBean;
import com.veclink.hw.bleservice.VLBleService;
import com.veclink.hw.bleservice.util.Debug;
import java.math.BigDecimal;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleCheckTemperatureTask extends BleTask
{

    private final int AUTOCONNECTTOTALCOUNT = 3;
    private boolean isRunning;
    private int retryReConnectCount;

    public BleCheckTemperatureTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
        isRunning = true;
        retryReConnectCount = 0;
    }

    public static float roundFloat(double d, int i, int j)
    {
        return (new BigDecimal(d)).setScale(i, j).floatValue();
    }

    public void deviceConnected()
    {
        super.deviceConnected();
        bleCallBack.sendOnDeviceConnectedMessage(Integer.valueOf(0));
        retryReConnectCount = 0;
    }

    public void deviceDisConnect()
    {
        super.deviceDisConnect();
        bleCallBack.sendOnDeviceDisConnectedMessage(Integer.valueOf(0));
    }

    public void doWork()
    {
        bleCallBack.sendOnStartMessage(Integer.valueOf(0));
        do
        {
label0:
            {
                if (isRunning)
                {
                    mDeviceRespondOk = false;
                    Debug.logBle((new StringBuilder()).append("dowork isRunning=").append(isRunning).toString());
                    waitResponse(5000);
                    if (isRunning)
                    {
                        break label0;
                    }
                }
                return;
            }
            if (!mBluetoothLeService.isConnected() || !mDeviceRespondOk)
            {
                mBluetoothLeService.disconnect();
                mBluetoothLeService.close();
                if (retryReConnectCount > 3)
                {
                    isRunning = false;
                    bleCallBack.sendOnTaskTimeOutMessage(Integer.valueOf(0));
                    Debug.logBle("\u6B21\u6570\u8D85\u8FC7\u4E09\u6B21\uFF0C\u9000\u51FA\u6D4B\u8BD5\u6E29\u5EA6");
                    return;
                }
                mBluetoothLeService.connect(mDeviceAddress);
                retryReConnectCount = retryReConnectCount + 1;
            } else
            {
                retryReConnectCount = 0;
            }
        } while (true);
    }

    public boolean isConnected()
    {
        if (mBluetoothLeService != null)
        {
            return mBluetoothLeService.isConnected();
        } else
        {
            return false;
        }
    }

    public boolean isRunning()
    {
        return isRunning;
    }

    protected int parseData(byte abyte0[])
    {
        abyte0 = new TemperatureBean(abyte0);
        abyte0.temperatureValue = roundFloat(((TemperatureBean) (abyte0)).temperatureValue, 1, 4);
        Log.v("lzf", abyte0.toString());
        bleCallBack.sendOnProgressMessage(abyte0);
        return 0;
    }

    public void stopTask()
    {
        isRunning = false;
        if (mBluetoothLeService != null)
        {
            mBluetoothLeService.disconnect();
            mBluetoothLeService.close();
        }
    }
}
