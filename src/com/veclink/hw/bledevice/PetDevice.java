// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bledevice;

import android.content.Context;
import com.veclink.hw.bleservice.util.DateTimeUtil;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.pet.PetData;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.veclink.hw.bledevice:
//            BraceletNewDevice

public class PetDevice extends BraceletNewDevice
{

    public static final byte CMD_QUERY_PET_DATA = 26;
    public byte mTmpDataByteArray[];
    public int mTmpDataByteArrayIndex;
    public int onedaySportDataNum;
    public List petDataList;
    public int sportDataInterv;

    public PetDevice(Context context)
    {
        super(context);
        onedaySportDataNum = 0;
        sportDataInterv = 30;
        mTmpDataByteArray = new byte[7200 / sportDataInterv];
        mTmpDataByteArrayIndex = 0;
        petDataList = new ArrayList();
    }

    public void converPetDeviceData()
    {
        int l = 0;
        int i = 1440 / sportDataInterv;
        int ai[][] = (int[][])Array.newInstance(Integer.TYPE, new int[] {
            i, 5
        });
        for (int j = 0; j < mTmpDataByteArrayIndex; j = j + 4 + 1)
        {
            ai[l][0] = mTmpDataByteArray[j] & 0xff;
            ai[l][1] = mTmpDataByteArray[j + 1] & 0xff;
            ai[l][2] = mTmpDataByteArray[j + 2] & 0xff;
            ai[l][3] = mTmpDataByteArray[j + 3] & 0xff;
            ai[l][4] = mTmpDataByteArray[j + 4] & 0xff;
            l++;
        }

        getHourMinute(onedaySportDataNum);
        String s = Keeper.getDeviceId(mContext);
        String s1 = (new StringBuilder()).append(String.valueOf(mStepDataYear + 2000)).append(intToString(mStepDataMonth)).append(intToString(mStepDataDate)).toString();
        for (int k = 0; k < onedaySportDataNum; k++)
        {
            int i1 = mRecordDataHour[k];
            int j1 = mRecordDataMinute[k];
            int k1 = ai[k][0];
            int l1 = ai[k][1];
            l1 = ai[k][2];
            int i2 = ai[k][3];
            int j2 = ai[k][4];
            PetData petdata = new PetData();
            petdata.startTime = i1 * 60 + j1;
            petdata.dateTime = s1;
            petdata.noSportDuration = k1;
            petdata.lightSportDuration = l1;
            petdata.middleSportDuration = i2;
            petdata.strongSportDuration = j2;
            petdata.deviceId = s;
            petDataList.add(petdata);
        }

    }

    public byte[] createSyncPetDataCmdArray(Date date, Date date1)
    {
        byte abyte0[] = new byte[10];
        if (date != null && date1 != null)
        {
            date = DateTimeUtil.getYearMonthDayArrayByDate(date);
            date1 = DateTimeUtil.getYearMonthDayArrayByDate(date1);
            int i = date[0];
            int k = date[1];
            int l = date[2];
            int i1 = date1[0];
            int j1 = date1[1];
            int k1 = date1[2];
            abyte0[0] = (byte)(i - 2000 & 0xff);
            abyte0[1] = (byte)k;
            abyte0[2] = (byte)l;
            abyte0[3] = 0;
            abyte0[4] = 0;
            abyte0[5] = (byte)(i1 - 2000 & 0xff);
            abyte0[6] = (byte)j1;
            abyte0[7] = (byte)k1;
            abyte0[8] = 0;
            abyte0[9] = 0;
        } else
        {
            abyte0[0] = 0;
            abyte0[1] = 0;
            abyte0[2] = 0;
            abyte0[3] = 0;
            abyte0[4] = 0;
            abyte0[5] = 0;
        }
        date = new byte[20];
        date[0] = 90;
        date[1] = 26;
        date[2] = 90;
        for (int j = 0; j < abyte0.length; j++)
        {
            date[j + 3] = abyte0[j];
        }

        return date;
    }

    public Object parsePetData(byte abyte0[])
    {
        int k1;
        int l = abyte0.length;
        if (l >= 5 && abyte0[0] == 91 && abyte0[1] == 26)
        {
            totalPackDataNum = abyte0[3] << 8 & 0xff00 | abyte0[4] & 0xff;
            Debug.logBle((new StringBuilder()).append("PetData totalPackDataNum:").append(totalPackDataNum).toString());
            if (totalPackDataNum == 0)
            {
                mOneDayDataOk = true;
                mAllDataOk = true;
                return null;
            }
        }
        if (l < 3)
        {
            isDeviceResponseError = true;
            return Integer.valueOf(0);
        }
        if (abyte0[0] == 90 || abyte0[0] == 91)
        {
            mPackageSn = abyte0[2] & 0xff;
            if (mPackageSn != 1);
            k1 = mPackageSn;
            byte abyte1[] = mReceiveStaus;
            int i = abyte0[2] / 8;
            abyte1[i] = (byte)(abyte1[i] & ~(1 << abyte0[2] % 8 - 1));
            if (mPackageSn > 1)
            {
                for (int j = 3; j < l; j++)
                {
                    mTmpDataByteArray[mTmpDataByteArrayIndex] = abyte0[j];
                    mTmpDataByteArrayIndex = mTmpDataByteArrayIndex + 1;
                }

            }
        } else
        {
            Debug.logBle("value[0]###PACKAGE_HEAD_CMD_ERROR:");
            isDeviceResponseError = true;
            return Integer.valueOf(-1000);
        }
        if (mPackageSn != 1) goto _L2; else goto _L1
_L1:
        mAllDataOk = false;
        mReceiveStaus[(k1 & 0xff) + 6] = -2;
        mLengthPackageSnArray[0] = abyte0[5];
        mLengthPackageSnArray[1] = abyte0[6];
        mStepDataYear = abyte0[10] & 0xff;
        mStepDataMonth = abyte0[11] & 0xff;
        mStepDataDate = abyte0[12] & 0xff;
        onedaySportDataNum = abyte0[13] & 0xff;
        mTmpDataByteArray = new byte[onedaySportDataNum * 5 + 17];
        mTmpDataByteArrayIndex = 0;
        k1 = abyte0[3] << 8 & 0xff00 | abyte0[4] & 0xff;
        oneLongpackDataLength = k1;
        int i1 = k1 / 17;
        int k = i1;
        if (k1 % 17 != 0)
        {
            k = i1 + 1;
        }
        oneLongpackSmallPackCount = k;
        for (k--; k < 120; k++)
        {
            abyte0 = mReceiveStaus;
            int j1 = k / 8;
            abyte0[j1] = (byte)(abyte0[j1] & ~(1 << k % 8));
        }

          goto _L3
_L2:
        if (mPackageSn != 255) goto _L5; else goto _L4
_L4:
        Debug.logBle("allday over!");
        converPetDeviceData();
        mTmpDataByteArray = new byte[7200 / sportDataInterv];
        mTmpDataByteArrayIndex = 0;
        Debug.logBle("\u540C\u6B65\u996E\u6C34\u6570\u636E\u5B8C\u6210\uFF01");
        mOneDayDataOk = true;
        mAllDataOk = true;
_L3:
        return Integer.valueOf(0);
_L5:
        if (mPackageSn == 254)
        {
            abyte0 = (new StringBuilder()).append(String.valueOf(mStepDataYear + 2000)).append(intToString(mStepDataMonth)).append(intToString(mStepDataDate)).toString();
            Debug.logBle((new StringBuilder()).append(abyte0).append(" oneday over! recordNum:").append(mTmpSportDataArrayOfByteIndex / 2).toString());
            converPetDeviceData();
            mTmpDataByteArray = new byte[7200 / sportDataInterv];
            mTmpDataByteArrayIndex = 0;
            mOneDayDataOk = true;
        }
        if (true) goto _L3; else goto _L6
_L6:
    }
}
