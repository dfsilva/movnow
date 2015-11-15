// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.watercup.bletask;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bledevice.WaterCupDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

public class BleCorrectParamsTask extends BleTask
{

    public static final byte SET_CORRECT_VALUE = 1;
    public static final byte SET_SAMPLE_TOFF3FZERO = 16;
    public static final byte START_CORRECT = 0;
    public final byte SET_CURRENT_SAMPLE_VALUE;
    private byte correctCmdArray[];
    private byte correctType;
    private boolean isCorrectZero;
    private int mainParams;
    private int mainParams2;
    private int mainParams3;
    private int mainParamsIndex;
    private byte operationstep;
    private byte resultArray[];
    private boolean startCorrect;
    private WaterCupDevice waterCupDevice;

    public BleCorrectParamsTask(Context context, BleCallBack blecallback, byte byte0, int i)
    {
        super(context, blecallback);
        SET_CURRENT_SAMPLE_VALUE = 17;
        operationstep = 0;
        mainParams = i;
        waterCupDevice = (WaterCupDevice)bleDeviceProfile;
        correctType = byte0;
    }

    public BleCorrectParamsTask(Context context, BleCallBack blecallback, byte byte0, int i, int j)
    {
        super(context, blecallback);
        SET_CURRENT_SAMPLE_VALUE = 17;
        operationstep = 0;
        mainParams = i;
        mainParamsIndex = j;
        waterCupDevice = (WaterCupDevice)bleDeviceProfile;
        correctType = byte0;
    }

    public BleCorrectParamsTask(Context context, BleCallBack blecallback, byte byte0, String s)
    {
        super(context, blecallback);
        SET_CURRENT_SAMPLE_VALUE = 17;
        operationstep = 0;
        waterCupDevice = (WaterCupDevice)bleDeviceProfile;
        correctType = byte0;
        startCorrect = true;
    }

    public BleCorrectParamsTask(Context context, BleCallBack blecallback, byte byte0, boolean flag)
    {
        super(context, blecallback);
        SET_CURRENT_SAMPLE_VALUE = 17;
        operationstep = 0;
        waterCupDevice = (WaterCupDevice)bleDeviceProfile;
        correctType = byte0;
        isCorrectZero = flag;
    }

    private void correctOffSetZero()
    {
        operationstep = 16;
        correctCmdArray = waterCupDevice.createCorrectOffsetZeroParamsCmd(correctType, operationstep);
        mDeviceRespondOk = false;
        waitResponse(5000);
        sendCmdToBleDevice(correctCmdArray);
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
    }

    private void correctTemp()
    {
        operationstep = 0;
        correctCmdArray = waterCupDevice.createCorrectParamsCmd(correctType, operationstep, 0);
        mDeviceRespondOk = false;
        sendCmdToBleDevice(correctCmdArray);
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            operationstep = 17;
            correctCmdArray = waterCupDevice.createCorrectTempParamsCmd(mainParamsIndex, mainParams);
            mDeviceRespondOk = false;
            sendCmdToBleDevice(correctCmdArray);
            waitResponse(5000);
            if (mDeviceRespondOk)
            {
                bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
                return;
            } else
            {
                bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
                return;
            }
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
    }

    private void correctWeight()
    {
        operationstep = 1;
        correctCmdArray = waterCupDevice.createCorrectParamsCmd(correctType, operationstep, mainParams);
        mDeviceRespondOk = false;
        sendCmdToBleDevice(correctCmdArray);
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
    }

    private void correctZero()
    {
        operationstep = 16;
        correctCmdArray = waterCupDevice.createCorrectParamsCmd(correctType, operationstep, 1);
        mDeviceRespondOk = false;
        waitResponse(5000);
        sendCmdToBleDevice(correctCmdArray);
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
    }

    private void startCorrect()
    {
        operationstep = 0;
        correctCmdArray = waterCupDevice.createCorrectParamsCmd(correctType, operationstep, 0);
        mDeviceRespondOk = false;
        sendCmdToBleDevice(correctCmdArray);
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
    }

    public void doWork()
    {
        if (startCorrect)
        {
            startCorrect();
        } else
        {
            if (isCorrectZero)
            {
                correctOffSetZero();
                return;
            }
            if (correctType == 2)
            {
                correctWeight();
                return;
            }
            if (correctType == 1)
            {
                correctTemp();
                return;
            }
        }
    }

    protected int parseData(byte abyte0[])
    {
        if (abyte0.length >= 6 && abyte0[0] == 91)
        {
            byte byte0 = abyte0[1];
            WaterCupDevice watercupdevice = waterCupDevice;
            if (byte0 == 23 && abyte0[6] == 3)
            {
                resultArray = abyte0;
                return 0;
            }
        }
        return -99;
    }

    public void sendCmdToBleDevice(byte abyte0[])
    {
        Debug.logBleByTag("BleCorrectParamsTask", Helper.bytesToHexString(abyte0));
        super.sendCmdToBleDevice(abyte0);
    }
}
