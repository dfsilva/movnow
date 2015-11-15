// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.pet;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bledevice.PetDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import java.util.Date;

public class BleSyncPetSportDataTask extends BleTask
{

    protected Date endDate;
    protected float maxDayCount;
    protected int oldProgress;
    protected PetDevice petDevice;
    protected int progress;
    protected int progressDayCount;
    protected int progressSmallPackage;
    protected Date startDate;
    protected int totalSmallPackage;

    public BleSyncPetSportDataTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
        progressDayCount = 0;
        progressSmallPackage = 0;
        totalSmallPackage = 0;
        oldProgress = 0;
        maxDayCount = 0.0F;
        petDevice = new PetDevice(context);
        bleDeviceProfile = petDevice;
    }

    public BleSyncPetSportDataTask(Context context, BleCallBack blecallback, Date date, Date date1)
    {
        super(context, blecallback);
        progressDayCount = 0;
        progressSmallPackage = 0;
        totalSmallPackage = 0;
        oldProgress = 0;
        maxDayCount = 0.0F;
        petDevice = new PetDevice(context);
        bleDeviceProfile = petDevice;
        startDate = date;
        endDate = date1;
    }

    private void syncPetData()
    {
        mDeviceRespondOk = false;
        sendCmdToBleDevice(petDevice.createSyncPetDataCmdArray(startDate, endDate));
        mDeviceRespondOk = false;
        Debug.logBle("sync wait for device response sync data cmd");
        waitResponse(2000);
        if (!mDeviceRespondOk)
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u6570\u636E\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
            return;
        }
        Debug.logBle(" response sync data cmd ok");
        if (bleDeviceProfile.totalPackDataNum == 0)
        {
            Debug.logBle(" response sync data totalPackDataNum is 0 finish task");
            mDeviceRespondOk = false;
            bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
            waitResponse(300);
        } else
        {
            maxDayCount = bleDeviceProfile.totalPackDataNum;
            if (!longPackageTrasport(bleDeviceProfile.totalPackDataNum))
            {
                Debug.logBle("\u4F20\u8F93\u6570\u636E\u8FC7\u7A0B\u5931\u8D25\uFF0C\u4EFB\u52A1\u5931\u8D25");
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
                return;
            }
        }
        Debug.logBle("sync data over task finish ..");
        bleCallBack.sendOnFinishMessage(petDevice.petDataList);
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
        syncPetData();
    }

    protected boolean longPackageTrasport(float f)
    {
        boolean flag1 = true;
        long l = System.currentTimeMillis();
        System.currentTimeMillis();
        progressDayCount = 0;
        boolean flag;
        do
        {
            flag = flag1;
            if (isStopTask)
            {
                break;
            }
            if (Math.abs(System.currentTimeMillis() - l) > 40000L || petDevice.isDeviceResponseError)
            {
                Debug.logBle("\u957F\u5305\u4F20\u8F93\u6570\u636E\u8D85\u65F6\uFF0C\u4EFB\u52A1\u5931\u8D25");
                mDeviceRespondOk = false;
                sendCmdToBleDevice(new byte[] {
                    90, 6, 0, -1, -1
                });
                return false;
            }
            if (bleDeviceProfile.mOneDayDataOk)
            {
                long l1 = System.currentTimeMillis();
                byte abyte0[] = new byte[20];
                abyte0[0] = 91;
                abyte0[1] = 5;
                abyte0[2] = 0;
                abyte0[3] = bleDeviceProfile.mLengthPackageSnArray[0];
                abyte0[4] = bleDeviceProfile.mLengthPackageSnArray[1];
                for (int i = 5; i < 20; i++)
                {
                    abyte0[i] = bleDeviceProfile.mReceiveStaus[i - 5];
                }

                Debug.logBle((new StringBuilder()).append("\u53D1\u9001\u4F4D\u57DF\u8868\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
                mDeviceRespondOk = false;
                sendCmdToBleDevice(abyte0);
                waitResponse(2000);
                if (!mDeviceRespondOk)
                {
                    Debug.logBle("\u53D1\u9001\u4F4D\u57DF\u8868\u540E\u65E0\u54CD\u5E94");
                    return false;
                }
                l = l1;
                if (!checkIsNeedRend())
                {
                    progressDayCount = progressDayCount + 1;
                    progressSmallPackage = 0;
                    Debug.logBle((new StringBuilder()).append("\u957F\u5305\u65E0\u4E22\u5305\u5F04 noneed resend data \u5DF2\u540C\u6B65\u5929\u6570\uFF1A").append(progressDayCount).append("  \u603B\u5929\u6570 \uFF1A").append(f).toString());
                    progress = Math.abs((int)(((float)progressDayCount / f) * 100F));
                    progress = Math.min(progress, 100);
                    Debug.logBle((new StringBuilder()).append("sync data progress is ").append(progress).toString());
                    if (progress > oldProgress)
                    {
                        bleCallBack.sendOnProgressMessage(Integer.valueOf(progress));
                    }
                    oldProgress = progress;
                    bleDeviceProfile.mOneDayDataOk = false;
                    if (bleDeviceProfile.mAllDataOk)
                    {
                        Debug.logBle("\u540C\u6B65\u6570\u636E\u5B8C\u6210");
                        mDeviceRespondOk = false;
                        sendCmdToBleDevice(new byte[] {
                            90, 6, 0, -1, -1
                        });
                        return true;
                    }
                    byte abyte1[];
                    try
                    {
                        Thread.sleep(200L);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                    }
                    abyte1 = new byte[5];
                    byte[] _tmp = abyte1;
                    abyte1[0] = 90;
                    abyte1[1] = 6;
                    abyte1[2] = 0;
                    abyte1[3] = 0;
                    abyte1[4] = 0;
                    abyte1[3] = bleDeviceProfile.mLengthPackageSnArray[0];
                    abyte1[4] = bleDeviceProfile.mLengthPackageSnArray[1];
                    Debug.logBle((new StringBuilder()).append("send request nextdate data ").append(Helper.bytesToHexString(abyte1)).toString());
                    mDeviceRespondOk = false;
                    sendCmdToBleDevice(abyte1);
                    waitResponse(5000);
                    l = l1;
                    if (!mDeviceRespondOk)
                    {
                        return false;
                    }
                }
            }
            if (!petDevice.isDeviceResponseError)
            {
                continue;
            }
            Debug.logBle("while transport data device response error , so sync task fail");
            flag = false;
            break;
        } while (true);
        return flag;
    }

    protected int parseData(byte abyte0[])
    {
        if (petDevice.isDeviceResponseError)
        {
            return -99;
        } else
        {
            petDevice.parsePetData(abyte0);
            sendLongpackDataProgress(abyte0);
            return 0;
        }
    }

    public void sendLongpackDataProgress(byte abyte0[])
    {
        if (abyte0[0] == 90 && abyte0[1] == 5 && petDevice.mPackageSn != 1)
        {
            progressSmallPackage = progressSmallPackage + 1;
            if (petDevice.oneLongpackSmallPackCount != 0 && maxDayCount != 0.0F)
            {
                float f = Math.abs((float)progress + ((float)progressSmallPackage / ((float)petDevice.oneLongpackSmallPackCount * maxDayCount)) * 100F);
                if (f > (float)oldProgress)
                {
                    bleCallBack.sendOnProgressMessage(Integer.valueOf(Math.min((int)f, 100)));
                }
                oldProgress = (int)f;
                return;
            }
        }
    }

    public void stopSyncTask()
    {
        super.stopSyncTask();
        bleCallBack.sendOnFinishMessage(null);
    }
}
