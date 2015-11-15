// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bledevice;

import android.content.Context;
import com.veclink.bracelet.bean.DeviceInfo;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseBleDevice
{

    public static final byte CMD_APP_SEND_UPDATE_DATA = 5;
    public static final byte CMD_BACK_SEND_HEAD = 91;
    public static final byte CMD_QUERY_FIRMWARE_VERSION = 16;
    public static final byte CMD_SEND_HEAD = 90;
    public static final byte CMD_SEND_NEXT_PACKAGE = 6;
    public static final byte CMD_SYNC_ALLSPORTDATA = 4;
    public static final byte CMD_SYNC_PARAMS = 1;
    public static final byte CMD_SYNC_TIMERANGE_SLEEPTDATA = 7;
    public static final byte CMD_SYNC_TIMERANGE_SPORTDATA = 3;
    public static final byte CMD_THIRD = 0;
    public static final byte CMD_TIMERINTERVAL = 2;
    public static final byte CMD_UPDATE_FIRMWARE_VERSION = 17;
    public static final int PACKAGE_HEAD_CMD_ERROR = -1000;
    public static final int PARSE_SUCCESS = 0;
    public static final int SEND_START_UPGRADE_CMD = 0x13881;
    public static final int SEND_UPGRADE_NEXT_PACKAGE_CMD = 0x13883;
    public static final int SEND_UPGRADE_START_PACKAGE_CMD = 0x13882;
    public static int ccitt_table[] = {
        0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 
        41290, 45419, 49548, 53677, 57806, 61935, 4657, 528, 12915, 8786, 
        21173, 17044, 29431, 25302, 37689, 33560, 45947, 41818, 54205, 50076, 
        62463, 58334, 9314, 13379, 1056, 5121, 25830, 29895, 17572, 21637, 
        42346, 46411, 34088, 38153, 58862, 62927, 50604, 54669, 13907, 9842, 
        5649, 1584, 30423, 26358, 22165, 18100, 46939, 42874, 38681, 34616, 
        63455, 59390, 55197, 51132, 18628, 22757, 26758, 30887, 2112, 6241, 
        10242, 14371, 51660, 55789, 59790, 63919, 35144, 39273, 43274, 47403, 
        23285, 19156, 31415, 27286, 6769, 2640, 14899, 10770, 56317, 52188, 
        64447, 60318, 39801, 35672, 47931, 43802, 27814, 31879, 19684, 23749, 
        11298, 15363, 3168, 7233, 60846, 64911, 52716, 56781, 44330, 48395, 
        36200, 40265, 32407, 28342, 24277, 20212, 15891, 11826, 7761, 3696, 
        65439, 61374, 57309, 53244, 48923, 44858, 40793, 36728, 37256, 33193, 
        45514, 41451, 53516, 49453, 61774, 57711, 4224, 161, 12482, 8419, 
        20484, 16421, 28742, 24679, 33721, 37784, 41979, 46042, 49981, 54044, 
        58239, 62302, 689, 4752, 8947, 13010, 16949, 21012, 25207, 29270, 
        46570, 42443, 38312, 34185, 62830, 58703, 54572, 50445, 13538, 9411, 
        5280, 1153, 29798, 25671, 21540, 17413, 42971, 47098, 34713, 38840, 
        59231, 63358, 50973, 55100, 9939, 14066, 1681, 5808, 26199, 30326, 
        17941, 22068, 55628, 51565, 63758, 59695, 39368, 35305, 47498, 43435, 
        22596, 18533, 30726, 26663, 6336, 2273, 14466, 10403, 52093, 56156, 
        60223, 64286, 35833, 39896, 43963, 48026, 19061, 23124, 27191, 31254, 
        2801, 6864, 10931, 14994, 64814, 60687, 56684, 52557, 48554, 44427, 
        40424, 36297, 31782, 27655, 23652, 19525, 15522, 11395, 7392, 3265, 
        61215, 65342, 53085, 57212, 44955, 49082, 36825, 40952, 28183, 32310, 
        20053, 24180, 11923, 16050, 3793, 7920
    };
    public DeviceInfo deviceInfo;
    public boolean mAllDataOk;
    public boolean mAllPackageReceivOver;
    public Context mContext;
    public byte mLengthPackageSnArray[];
    public boolean mNextPackageRequest;
    public boolean mOneDayDataOk;
    public int mPackageSn;
    public boolean mReTransferDataFlag;
    public byte mReceiveStaus[];
    public int mRecordDataHour[];
    public int mRecordDataMinute[];
    public boolean mRequestNextPackage;
    public int mRetransData[];
    int mSendPackageNum;
    public int mStepDataDate;
    public int mStepDataMonth;
    public int mStepDataYear;
    public int mStepTimeInterval;
    public byte mTmpSleepDataArrayOfByte[];
    public int mTmpSleepDataArrayOfByteIndex;
    public byte mTmpSportDataArrayOfByte[];
    public int mTmpSportDataArrayOfByteIndex;
    public int mUpgradeState;
    public int mttRetransData[] = {
        1, 2, 2, 3, 3, 4
    };
    public int oneDataRecordCount;
    public int pareseCmdResponseType;
    public List syncSleepDataResult;
    public List syncSportDataResult;
    public int totalPackDataNum;

    public BaseBleDevice()
    {
        mStepTimeInterval = 30;
        oneDataRecordCount = 48;
        mTmpSportDataArrayOfByte = new byte[2880 / mStepTimeInterval];
        mTmpSleepDataArrayOfByte = new byte[192];
        mRecordDataHour = new int[1440 / mStepTimeInterval];
        mRecordDataMinute = new int[1440 / mStepTimeInterval];
        mTmpSportDataArrayOfByteIndex = 0;
        mTmpSleepDataArrayOfByteIndex = 0;
        mAllDataOk = false;
        mOneDayDataOk = false;
        mLengthPackageSnArray = new byte[2];
        totalPackDataNum = -1;
        mUpgradeState = 0;
        mSendPackageNum = 0;
        mReceiveStaus = new byte[15];
        mRetransData = new int[120];
        mRequestNextPackage = false;
        mAllPackageReceivOver = false;
        mNextPackageRequest = false;
        mReTransferDataFlag = false;
        syncSportDataResult = new ArrayList();
        syncSleepDataResult = new ArrayList();
        deviceInfo = new DeviceInfo();
    }

    public void clearNextPackageRequest()
    {
        mNextPackageRequest = false;
    }

    public void convertRetransDataPackageNum()
    {
        int j = 0;
        mRetransData = new int[120];
        for (int i = 0; i < 15; i++)
        {
            for (int k = 0; k < 8;)
            {
                int l = j;
                if ((mReceiveStaus[i] & 1 << k & 0xff) != 0)
                {
                    mRetransData[j] = k + 1 + i * 8;
                    l = j + 1;
                    mReTransferDataFlag = true;
                }
                k++;
                j = l;
            }

        }

    }

    public int crc_ccitt(byte abyte0[], int i)
    {
        int k = 0;
        for (int j = 0; j < i; j++)
        {
            k = ccitt_table[((k & 0xffff) >> 8 ^ abyte0[j]) & 0xff] & 0xffff ^ (k & 0xffff) << 8;
        }

        return ~k & 0xffff;
    }

    public transient abstract byte[] createCmdArrayOfByte(Object aobj[]);

    public boolean getAllPackageReceivOver()
    {
        return mAllPackageReceivOver;
    }

    public boolean getNextPackageRequest()
    {
        return mNextPackageRequest;
    }

    public boolean getReTransferDataFlag()
    {
        return mReTransferDataFlag;
    }

    public int getRetransData()
    {
        int j = 0;
        int l = mRetransData.length;
        for (int i = 0; i < l;)
        {
            int k = j;
            if (mRetransData[i] != 0)
            {
                k = j + 1;
            }
            i++;
            j = k;
        }

        return j;
    }

    public int getSendPackageNum()
    {
        return mSendPackageNum;
    }

    public abstract int pareseQueryFirmwareVersionResponse(byte abyte0[]);

    public abstract int parseSetTimeIntervalRespone(byte abyte0[]);

    public abstract Object parseSportData(byte abyte0[]);

    public abstract int parseSyncParamsResponse(byte abyte0[]);

    public abstract int parseUpdateResponseData(byte abyte0[]);

    public void reSetReceiveStatus()
    {
        mReceiveStaus = new byte[15];
        mRetransData = new int[120];
        mSendPackageNum = 0;
        mRequestNextPackage = false;
        mAllPackageReceivOver = false;
        mNextPackageRequest = false;
        mReTransferDataFlag = false;
        mTmpSportDataArrayOfByteIndex = 0;
        mTmpSleepDataArrayOfByteIndex = 0;
        mAllDataOk = false;
        mOneDayDataOk = false;
        mLengthPackageSnArray = new byte[2];
    }

}
