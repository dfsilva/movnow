// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bledevice;

import android.content.Context;
import com.veclink.hw.bleservice.util.DateTimeUtil;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.bleservice.util.NumberToByteArray;
import com.veclink.watercup.bean.DrinkWaterData;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.veclink.hw.bledevice:
//            BraceletNewDevice

public class WaterCupDevice extends BraceletNewDevice
{

    public static final byte CMD_CORRECT_EXIT = 0;
    public static final byte CMD_CORRECT_PARAMS = 23;
    public static final byte CMD_CORRECT_TEMP = 1;
    public static final byte CMD_CORRECT_WEIGHT = 2;
    public static final byte CMD_QUERY_CUP_STATE = 8;
    public static final byte CMD_QUERY_DRING_PLAN = 1;
    public static final byte CMD_SETTING_DRING_PLAN = 0;
    public static final byte CMD_SYNC_DRING_DATA = 9;
    public static final byte CMD_SYNC_DRING_PLAN = 10;
    public int drinkDataInterv;
    public List drinkDataList;
    public byte mTmpDrinkDataArrayOfByte[];
    public int mTmpDrinkDataArrayOfByteIndex;
    public int onedayDrinkDataNum;

    public WaterCupDevice(Context context)
    {
        super(context);
        onedayDrinkDataNum = 0;
        drinkDataInterv = 10;
        mTmpDrinkDataArrayOfByte = new byte[5760 / drinkDataInterv];
        mTmpDrinkDataArrayOfByteIndex = 0;
        drinkDataList = new ArrayList();
    }

    public void converDrinkWaterData()
    {
        int k = 0;
        int ai[][] = (int[][])Array.newInstance(Integer.TYPE, new int[] {
            144, 2
        });
        for (int i = 0; i < mTmpDrinkDataArrayOfByteIndex; i = i + 3 + 1)
        {
            ai[k][0] = mTmpDrinkDataArrayOfByte[i] << 8 & 0xff00 | mTmpDrinkDataArrayOfByte[i + 1] & 0xff;
            ai[k][1] = mTmpDrinkDataArrayOfByte[i + 2] << 8 & 0xff00 | mTmpDrinkDataArrayOfByte[i + 3] & 0xff;
            k++;
        }

        String s = Keeper.getDeviceId(mContext);
        String s1 = (new StringBuilder()).append(String.valueOf(mStepDataYear + 2000)).append(intToString(mStepDataMonth)).append(intToString(mStepDataDate)).toString();
        for (int j = 0; j < onedayDrinkDataNum; j++)
        {
            int l = ai[j][0];
            int i1 = ai[j][1];
            DrinkWaterData drinkwaterdata = new DrinkWaterData();
            drinkwaterdata.dateTime = s1;
            drinkwaterdata.startTime = l;
            drinkwaterdata.drinkWaterCount = i1;
            drinkwaterdata.deviceId = s;
            drinkDataList.add(drinkwaterdata);
        }

    }

    public byte[] createCorrectOffsetZeroParamsCmd(byte byte0, byte byte1)
    {
        byte abyte0[] = new byte[20];
        abyte0[0] = 90;
        abyte0[1] = 23;
        abyte0[2] = 0;
        abyte0[3] = 0;
        abyte0[4] = byte0;
        abyte0[5] = byte1;
        abyte0[6] = 1;
        return abyte0;
    }

    public byte[] createCorrectParamsCmd(byte byte0, byte byte1, int i)
    {
        byte abyte0[] = new byte[20];
        abyte0[0] = 90;
        abyte0[1] = 23;
        abyte0[2] = 0;
        abyte0[3] = 0;
        abyte0[4] = byte0;
        abyte0[5] = byte1;
        byte abyte1[] = NumberToByteArray.intToBytes(i);
        for (i = 0; i < abyte1.length; i++)
        {
            abyte0[i + 6] = abyte1[i];
        }

        return abyte0;
    }

    public byte[] createCorrectTempParamsCmd(int i, int j)
    {
        byte abyte0[] = new byte[20];
        abyte0[0] = 90;
        abyte0[1] = 23;
        abyte0[2] = 0;
        abyte0[3] = 0;
        abyte0[4] = 1;
        abyte0[5] = 1;
        abyte0[6] = (byte)i;
        byte abyte1[] = NumberToByteArray.intToBytes(j);
        for (i = 1; i < abyte1.length; i++)
        {
            abyte0[i + 6] = abyte1[i];
        }

        return abyte0;
    }

    public byte[] createQueryCupStateCmd()
    {
        return (new byte[] {
            90, 8, 0, 1
        });
    }

    public byte[] createSetDrinkPlanCmd(int i)
    {
        return (new byte[] {
            90, 10, 0, 0, (byte)i
        });
    }

    public byte[] createSyncCupDrinkDataCmd(Date date, Date date1)
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
        date[1] = 9;
        date[2] = 90;
        for (int j = 0; j < abyte0.length; j++)
        {
            date[j + 3] = abyte0[j];
        }

        return date;
    }

    public Object parseDringkWaterData(byte abyte0[])
    {
        int k1;
        int l = abyte0.length;
        if (l >= 5 && abyte0[0] == 91 && abyte0[1] == 9)
        {
            totalPackDataNum = abyte0[3] << 8 & 0xff00 | abyte0[4] & 0xff;
            Debug.logBle((new StringBuilder()).append("DringkWaterData totalPackDataNum:").append(totalPackDataNum).toString());
            if (totalPackDataNum == 0)
            {
                mOneDayDataOk = true;
                mAllDataOk = true;
                return null;
            }
        }
        if (abyte0[2] == 14)
        {
            isDeviceResponseError = true;
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
                    mTmpDrinkDataArrayOfByte[mTmpDrinkDataArrayOfByteIndex] = abyte0[j];
                    mTmpDrinkDataArrayOfByteIndex = mTmpDrinkDataArrayOfByteIndex + 1;
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
        onedayDrinkDataNum = abyte0[13] & 0xff;
        mTmpDrinkDataArrayOfByte = new byte[onedayDrinkDataNum * 4 + 17];
        mTmpDrinkDataArrayOfByteIndex = 0;
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
        converDrinkWaterData();
        mTmpDrinkDataArrayOfByte = new byte[5760 / drinkDataInterv];
        mTmpDrinkDataArrayOfByteIndex = 0;
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
            converDrinkWaterData();
            mTmpDrinkDataArrayOfByte = new byte[5760 / drinkDataInterv];
            mTmpDrinkDataArrayOfByteIndex = 0;
            mOneDayDataOk = true;
        }
        if (true) goto _L3; else goto _L6
_L6:
    }

    public int parseSetDrinkPlanResponseData(byte abyte0[])
    {
        switch (pareseCmdResponseType)
        {
        default:
            return 0;

        case 80001: 
            return parseStartSetDrinkPlanResponse(abyte0);

        case 80002: 
            return parseUpgradeSendPackageResponse(abyte0);

        case 80003: 
            return parseUpgradeNextPackageResponse(abyte0);
        }
    }

    public int parseStartSetDrinkPlanResponse(byte abyte0[])
    {
        Debug.logBle((new StringBuilder()).append("StartSetDrinkPlanResponse:").append(Helper.bytesToHexString(abyte0)).toString());
        if (abyte0[0] != 91 || abyte0[1] != 10)
        {
            return -1000;
        } else
        {
            mPackageSn = abyte0[2];
            mUpgradeState = abyte0[4] & 0xff;
            mSendPackageNum = 0;
            return 0;
        }
    }
}
