// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import android.text.format.Time;
import com.veclink.bracelet.bean.DeviceSportAndSleepData;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bledevice.BraceletNewDevice;
import com.veclink.hw.bleservice.util.DateTimeUtil;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import java.util.Date;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleTestSyncDataTask extends BleTask
{

    protected BraceletNewDevice braceletNewDevice;
    protected int dataType;
    protected boolean isStopTask;
    protected boolean isSyncParams;
    protected byte parmasArray[];
    protected int progress;
    protected byte syncparamsArray[];

    public BleTestSyncDataTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
        progress = 0;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
        parmasArray = new byte[6];
        parmasArray[0] = 0;
        parmasArray[1] = 0;
        parmasArray[2] = 0;
        parmasArray[3] = 0;
        parmasArray[4] = 0;
        parmasArray[5] = 0;
        initSyncParamsArray();
    }

    public BleTestSyncDataTask(Context context, BleCallBack blecallback, int i)
    {
        super(context, blecallback);
        progress = 0;
        dataType = i;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
        parmasArray = new byte[6];
        parmasArray[0] = 0;
        parmasArray[1] = 0;
        parmasArray[2] = 0;
        parmasArray[3] = 0;
        parmasArray[4] = 0;
        parmasArray[5] = 0;
        initSyncParamsArray();
    }

    public BleTestSyncDataTask(Context context, BleCallBack blecallback, int i, Date date, Date date1)
    {
        super(context, blecallback);
        progress = 0;
        dataType = i;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
        context = DateTimeUtil.getYearMonthDayArrayByDate(date);
        blecallback = DateTimeUtil.getYearMonthDayArrayByDate(date1);
        i = context[0];
        int j = context[1];
        int k = context[2];
        int l = blecallback[0];
        int i1 = blecallback[1];
        int j1 = blecallback[2];
        Debug.logBle((new StringBuilder()).append("\u5F00\u59CB\u65F6\u95F4\uFF1A").append(i).append("\u5E74").append(j).append("\u6708").append(k).append("\u65E5").toString());
        Debug.logBle((new StringBuilder()).append("\u7ED3\u675F\u65F6\u95F4\uFF1A").append(l).append("\u5E74").append(i1).append("\u6708").append(j1).append("\u65E5").toString());
        parmasArray = new byte[6];
        parmasArray[0] = (byte)(i - 2000 & 0xff);
        parmasArray[1] = (byte)j;
        parmasArray[2] = (byte)k;
        parmasArray[3] = (byte)(l - 2000 & 0xff);
        parmasArray[4] = (byte)i1;
        parmasArray[5] = (byte)j1;
        initSyncParamsArray();
    }

    public BleTestSyncDataTask(Context context, BleCallBack blecallback, Date date, Date date1)
    {
        super(context, blecallback);
        progress = 0;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
        context = DateTimeUtil.getYearMonthDayArrayByDate(date);
        blecallback = DateTimeUtil.getYearMonthDayArrayByDate(date1);
        int i = context[0];
        int j = context[1];
        int k = context[2];
        int l = blecallback[0];
        int i1 = blecallback[1];
        int j1 = blecallback[2];
        Debug.logBle((new StringBuilder()).append("\u5F00\u59CB\u65F6\u95F4\uFF1A").append(i).append("\u5E74").append(j).append("\u6708").append(k).append("\u65E5").toString());
        Debug.logBle((new StringBuilder()).append("\u7ED3\u675F\u65F6\u95F4\uFF1A").append(l).append("\u5E74").append(i1).append("\u6708").append(j1).append("\u65E5").toString());
        parmasArray = new byte[6];
        parmasArray[0] = (byte)(i - 2000 & 0xff);
        parmasArray[1] = (byte)j;
        parmasArray[2] = (byte)k;
        parmasArray[3] = (byte)(l - 2000 & 0xff);
        parmasArray[4] = (byte)i1;
        parmasArray[5] = (byte)j1;
        initSyncParamsArray();
    }

    private void initSyncParamsArray()
    {
        Time time = new Time();
        time.setToNow();
        int i = time.year;
        int j = time.month;
        int k = time.monthDay;
        int l = time.hour;
        int i1 = time.minute;
        int j1 = time.second;
        syncparamsArray = new byte[13];
        syncparamsArray[0] = 90;
        syncparamsArray[1] = 1;
        syncparamsArray[2] = 0;
        syncparamsArray[3] = (byte)(i - 2000 & 0xff);
        syncparamsArray[4] = (byte)(j + 1);
        syncparamsArray[5] = (byte)k;
        syncparamsArray[6] = (byte)l;
        syncparamsArray[7] = (byte)i1;
        syncparamsArray[8] = (byte)j1;
        syncparamsArray[9] = (byte)0;
        syncparamsArray[10] = (byte)200;
        syncparamsArray[11] = (byte)1;
        syncparamsArray[12] = (byte)1;
    }

    private void onlySyncSportDataOrSleepData()
    {
        int i = 0;
        mDeviceRespondOk = false;
        byte abyte0[] = bleDeviceProfile.createCmdArrayOfByte(new Object[] {
            Byte.valueOf((byte)3), parmasArray
        });
        byte abyte1[] = bleDeviceProfile.createCmdArrayOfByte(new Object[] {
            Byte.valueOf((byte)7), parmasArray
        });
        while (i < 3 && !mDeviceRespondOk && !isStopTask) 
        {
            if (dataType == 1)
            {
                Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u8FD0\u52A8\u6570\u636E\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
                sendCmdToBleDevice(abyte0);
                Debug.logBle("sync wait for device response sync sport data cmd");
            } else
            {
                Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u7761\u7720\u6570\u636E\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte1)).toString());
                sendCmdToBleDevice(abyte1);
                Debug.logBle("sync wait for device response sync sleep data cmd");
            }
            mDeviceRespondOk = false;
            Debug.logBle("sync wait for device response sync data cmd");
            waitResponse(2000);
            i++;
        }
        if (i >= 3 && !mDeviceRespondOk)
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u6570\u636E\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        } else
        {
            Debug.logBle(" response sync data cmd ok");
            if (bleDeviceProfile.totalPackDataNum == 0)
            {
                Debug.logBle(" response sync data totalPackDataNum is 0 finish task");
                bleCallBack.sendOnFinishMessage(null);
                return;
            }
            if (!longPackageTrasport(bleDeviceProfile.totalPackDataNum))
            {
                Debug.logBle("\u4F20\u8F93\u6570\u636E\u8FC7\u7A0B\u5931\u8D25\uFF0C\u4EFB\u52A1\u5931\u8D25");
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
                return;
            }
            if (bleDeviceProfile.mAllDataOk)
            {
                Debug.logBle("sync data over task finish ..");
                DeviceSportAndSleepData devicesportandsleepdata = new DeviceSportAndSleepData();
                devicesportandsleepdata.syncSportDataResult = bleDeviceProfile.syncSportDataResult;
                devicesportandsleepdata.syncSleepDataResult = bleDeviceProfile.syncSleepDataResult;
                bleCallBack.sendOnFinishMessage(devicesportandsleepdata);
                return;
            }
        }
    }

    private void syncSportAndSleepData()
    {
        mDeviceRespondOk = false;
        byte abyte0[] = bleDeviceProfile.createCmdArrayOfByte(new Object[] {
            Byte.valueOf((byte)3), parmasArray
        });
        Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u8FD0\u52A8\u6570\u636E\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        sendCmdToBleDevice(abyte0);
        Debug.logBle("sync wait for device response sync sport data cmd");
        waitResponse(2000);
        if (!mDeviceRespondOk)
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u8FD0\u52A8\u6570\u636E\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        } else
        {
            Debug.logBle(" response sync sport data cmd ok");
            float f = bleDeviceProfile.totalPackDataNum * 2;
            byte abyte1[];
            if (bleDeviceProfile.totalPackDataNum == 0)
            {
                Debug.logBle(" response sync sport data totalPackDataNum is 0 ");
            } else
            if (!longPackageTrasport(f))
            {
                Debug.logBle("\u4F20\u8F93\u8FD0\u52A8\u6570\u636E\u8FC7\u7A0B\u5931\u8D25\uFF0C\u4EFB\u52A1\u5931\u8D25");
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
                return;
            }
            try
            {
                Thread.sleep(200L);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            bleDeviceProfile.reSetReceiveStatus();
            mDeviceRespondOk = false;
            abyte1 = bleDeviceProfile.createCmdArrayOfByte(new Object[] {
                Byte.valueOf((byte)7), parmasArray
            });
            Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u7761\u7720\u6570\u636E\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte1)).toString());
            sendCmdToBleDevice(abyte1);
            Debug.logBle("sync wait for device response sync sleep data cmd");
            waitResponse(2000);
            if (!mDeviceRespondOk)
            {
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
                Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u7761\u7720\u6570\u636E\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
                return;
            }
            Debug.logBle(" response sync sleep data cmd ok");
            f /= 2.0F;
            float f1 = bleDeviceProfile.totalPackDataNum;
            if (bleDeviceProfile.totalPackDataNum == 0)
            {
                Debug.logBle(" response sync sleepdata totalPackDataNum is 0 finish task");
                bleCallBack.sendOnFinishMessage(null);
                return;
            }
            if (!longPackageTrasport(f + f1))
            {
                Debug.logBle("\u4F20\u8F93\u7761\u7720\u6570\u636E\u8FC7\u7A0B\u5931\u8D25\uFF0C\u4EFB\u52A1\u5931\u8D25");
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
                return;
            }
            if (bleDeviceProfile.mAllDataOk)
            {
                Debug.logBle("sync data over task finish ..");
                DeviceSportAndSleepData devicesportandsleepdata = new DeviceSportAndSleepData();
                devicesportandsleepdata.syncSportDataResult = bleDeviceProfile.syncSportDataResult;
                devicesportandsleepdata.syncSleepDataResult = bleDeviceProfile.syncSleepDataResult;
                bleCallBack.sendOnFinishMessage(devicesportandsleepdata);
                return;
            }
        }
    }

    public boolean checkIsNeedRend()
    {
        convertNeedResendDataPackageNum();
        int j = 0;
        int l = bleDeviceProfile.mRetransData.length;
        for (int i = 0; i < l;)
        {
            int k = j;
            if (bleDeviceProfile.mRetransData[i] != 0)
            {
                k = j + 1;
            }
            i++;
            j = k;
        }

        return j > 0;
    }

    public void convertNeedResendDataPackageNum()
    {
        int j = 0;
        bleDeviceProfile.mRetransData = new int[120];
        for (int i = 0; i < 15; i++)
        {
            for (int k = 0; k < 8;)
            {
                int l = j;
                if ((bleDeviceProfile.mReceiveStaus[i] & 1 << k & 0xff) != 0)
                {
                    bleDeviceProfile.mRetransData[j] = k + 1 + i * 8;
                    l = j + 1;
                    bleDeviceProfile.mReTransferDataFlag = true;
                }
                k++;
                j = l;
            }

        }

    }

    public void doWork()
    {
        syncParams();
        try
        {
            Thread.sleep(200L);
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        if (dataType == 0)
        {
            syncSportAndSleepData();
            return;
        } else
        {
            onlySyncSportDataOrSleepData();
            return;
        }
    }

    protected boolean longPackageTrasport(float f)
    {
        long l;
        long l1;
        boolean flag1;
        flag1 = true;
        l1 = System.currentTimeMillis();
        l = System.currentTimeMillis();
_L2:
        boolean flag;
        flag = flag1;
        if (!bleDeviceProfile.mAllDataOk)
        {
            flag = flag1;
            if (!isStopTask)
            {
                flag = flag1;
                if (l - l1 < 20000L)
                {
                    l = System.currentTimeMillis();
                    if (!bleDeviceProfile.mOneDayDataOk)
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    progress = progress + 1;
                    int i = Math.min((int)(((float)progress / f) * 100F), 100);
                    Debug.logBle((new StringBuilder()).append("sync data progress is ").append(i).toString());
                    bleCallBack.sendOnProgressMessage(Integer.valueOf(i));
                    bleDeviceProfile.mOneDayDataOk = false;
                    byte abyte0[] = new byte[20];
                    abyte0[0] = 91;
                    abyte0[1] = 5;
                    abyte0[2] = 0;
                    abyte0[3] = bleDeviceProfile.mLengthPackageSnArray[0];
                    abyte0[4] = bleDeviceProfile.mLengthPackageSnArray[1];
                    for (int j = 5; j < 20; j++)
                    {
                        abyte0[j] = bleDeviceProfile.mReceiveStaus[j - 5];
                    }

                    mDeviceRespondOk = false;
                    sendCmdToBleDevice(abyte0);
                    waitResponse(2000);
                    if (!mDeviceRespondOk)
                    {
                        Debug.logBle("\u53D1\u9001\u4F4D\u57DF\u540E\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u6570\u636E\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
                        flag = false;
                    } else
                    {
                        if (checkIsNeedRend())
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        Debug.logBle("\u957F\u5305\u65E0\u4E22\u5305\u5F04 noneed resend data ");
                        byte abyte1[] = new byte[5];
                        abyte1;
                        abyte1[0] = 90;
                        abyte1[1] = 6;
                        abyte1[2] = 0;
                        abyte1[3] = 0;
                        abyte1[4] = 0;
                        abyte1[3] = bleDeviceProfile.mLengthPackageSnArray[0];
                        abyte1[4] = bleDeviceProfile.mLengthPackageSnArray[1];
                        mDeviceRespondOk = false;
                        sendCmdToBleDevice(abyte1);
                        waitResponse(2000);
                        if (mDeviceRespondOk)
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        if (braceletNewDevice.mAllDataOk)
                        {
                            Debug.logBle("\u540C\u6B65\u6570\u636E\u5B8C\u6210");
                            return true;
                        }
                        Debug.logBle("\u8BF7\u6C42\u4E0B\u4E00\u5305\u6570\u636E\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u6570\u636E\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
                        flag = false;
                    }
                }
            }
        }
_L3:
        if (braceletNewDevice.mAllDataOk)
        {
            flag = true;
        }
        return flag;
        if (!braceletNewDevice.isDeviceResponseError) goto _L2; else goto _L1
_L1:
        Debug.logBle("while transport data device response error , so sync task fail");
        flag = false;
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    protected int parseData(byte abyte0[])
    {
        if (isSyncParams)
        {
            return bleDeviceProfile.parseSyncParamsResponse(abyte0);
        } else
        {
            bleDeviceProfile.parseSportData(abyte0);
            return 0;
        }
    }

    public void stopSyncTask()
    {
        isStopTask = true;
    }

    public void syncParams()
    {
        mDeviceRespondOk = false;
        bleCallBack.sendOnStartMessage(null);
        Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u53C2\u6570\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(syncparamsArray)).toString());
        isSyncParams = true;
        sendCmdToBleDevice(syncparamsArray);
        waitResponse(2000);
        Debug.logBle("sync wait for device response syncparams cmd");
        if (!mDeviceRespondOk)
        {
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u53C2\u6570\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
        } else
        {
            Debug.logBle("\u540C\u6B65\u53C2\u6570\u4EFB\u52A1\u6267\u884C\u6210\u529F");
        }
        isSyncParams = false;
    }
}
