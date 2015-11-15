// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bledevice;

import android.content.Context;
import com.veclink.bracelet.bean.DeviceInfo;
import com.veclink.bracelet.bean.DeviceSleepData;
import com.veclink.bracelet.bean.DeviceSportData;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.hw.bleservice.util.Keeper;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.List;

// Referenced classes of package com.veclink.hw.bledevice:
//            BaseBleDevice

public class BraceletOldDevice extends BaseBleDevice
{

    public static final byte CMD_APP_SEND_UPDATE_DATA = 18;
    public static final byte CMD_SEND_NEXT_PACKAGE = 19;

    public BraceletOldDevice(Context context)
    {
        mContext = context;
        mTmpSportDataArrayOfByte = new byte[4320 / mStepTimeInterval];
    }

    public void convertSaveSportData()
    {
        int i1 = 0;
        int i = 1440 / mStepTimeInterval;
        int ai[][] = (int[][])Array.newInstance(Integer.TYPE, new int[] {
            i, 2
        });
        System.out.println((new StringBuilder()).append("datasize").append(mTmpSportDataArrayOfByteIndex).toString());
        int l = 0;
        Object obj = new StringBuilder();
        i = 0;
        for (int j = 0; j < mTmpSportDataArrayOfByte.length; j = j + 1 + 1 + 1)
        {
            int k1 = mTmpSportDataArrayOfByte[j] << 8 & 0xff00 | mTmpSportDataArrayOfByte[j + 1] & 0xff;
            ((StringBuilder) (obj)).append(Integer.toHexString(k1));
            if (i1 < 48)
            {
                ai[i1][0] = mTmpSportDataArrayOfByte[j] & 0xff;
                ai[i1][1] = mTmpSportDataArrayOfByte[j + 1] << 8 & 0xff00 | mTmpSportDataArrayOfByte[j + 2] & 0xff;
            }
            i1++;
            if (l % 17 == 0)
            {
                System.out.println();
            }
            l++;
            i += k1;
        }

        mStepTimeInterval = 30;
        l = 1440 / mStepTimeInterval;
        getHourMinute(l);
        int k = 0;
        obj = Keeper.getDeviceId(mContext);
        String s1 = (new StringBuilder()).append(String.valueOf(mStepDataYear + 2000)).append(intToString(mStepDataMonth)).append(intToString(mStepDataDate)).toString();
        i = 0;
        while (i < l) 
        {
            String s3 = (new StringBuilder()).append(s1).append(intToString(mRecordDataHour[i])).append(intToString(mRecordDataMinute[i])).toString();
            String s2 = intToString(ai[i][0]);
            int j1 = ai[i][1];
            if (j1 != 0)
            {
                if (s2.equals("01"))
                {
                    k += j1;
                    DeviceSportData devicesportdata = new DeviceSportData();
                    devicesportdata.deviceId = ((String) (obj));
                    devicesportdata.sportStep = j1;
                    devicesportdata.sportTime = s3;
                    devicesportdata.sportType = s2;
                    syncSportDataResult.add(devicesportdata);
                } else
                {
                    DeviceSleepData devicesleepdata = new DeviceSleepData();
                    devicesleepdata.dateTime = s1;
                    devicesleepdata.deviceId = ((String) (obj));
                    devicesleepdata.sleepDuration = 30;
                    devicesleepdata.sleepState = Integer.parseInt(s2);
                    devicesleepdata.startTime = mRecordDataHour[i] * 60 + mRecordDataMinute[i];
                    syncSleepDataResult.add(devicesleepdata);
                }
            }
            i++;
        }
        String s = (new StringBuilder()).append(String.valueOf(mStepDataYear + 2000)).append(intToString(mStepDataMonth)).append(intToString(mStepDataDate)).toString();
        Debug.logBle((new StringBuilder()).append("\u65E5\u671F\uFF1A").append(s).append(" \u603B\u5171\u662F ").append(k).append("\u6B65").toString());
    }

    public transient byte[] createCmdArrayOfByte(Object aobj[])
    {
        byte abyte0[];
        byte abyte1[];
        byte byte1;
        byte1 = ((Byte)aobj[0]).byteValue();
        abyte1 = null;
        abyte0 = abyte1;
        if (byte1 != 91)
        {
            abyte0 = abyte1;
            if (byte1 != 2)
            {
                abyte0 = abyte1;
                if (aobj.length > 1)
                {
                    abyte0 = (byte[])(byte[])aobj[1];
                }
            }
        }
        abyte1 = new byte[20];
        abyte1[0] = 90;
        abyte1[2] = 0;
        byte1;
        JVM INSTR lookupswitch 8: default 144
    //                   1: 194
    //                   2: 205
    //                   3: 242
    //                   4: 301
    //                   7: 253
    //                   16: 265
    //                   17: 289
    //                   91: 321;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
        aobj = abyte1;
_L11:
        if (abyte0 != null && abyte0.length > 0)
        {
            for (int i = 3; i < aobj.length; i++)
            {
                if (i - 3 < abyte0.length)
                {
                    aobj[i] = abyte0[i - 3];
                }
            }

        }
        break; /* Loop/switch isn't completed */
_L2:
        abyte1[1] = 1;
        aobj = abyte1;
        continue; /* Loop/switch isn't completed */
_L3:
        int j = ((Integer)aobj[1]).intValue();
        aobj = new byte[4];
        aobj[0] = 90;
        aobj[1] = 2;
        aobj[2] = 0;
        aobj[3] = (byte)j;
        continue; /* Loop/switch isn't completed */
_L4:
        abyte1[1] = 3;
        aobj = abyte1;
        continue; /* Loop/switch isn't completed */
_L6:
        abyte1[1] = 7;
        aobj = abyte1;
        continue; /* Loop/switch isn't completed */
_L7:
        aobj = new byte[3];
        aobj;
        aobj[0] = 90;
        aobj[1] = 16;
        aobj[2] = 0;
        continue; /* Loop/switch isn't completed */
_L8:
        abyte1[1] = 17;
        aobj = abyte1;
        continue; /* Loop/switch isn't completed */
_L5:
        aobj = new byte[3];
        aobj[0] = 90;
        aobj[1] = 4;
        aobj[2] = 0;
        continue; /* Loop/switch isn't completed */
_L9:
        byte abyte2[] = new byte[3];
        byte byte0 = ((Byte)aobj[1]).byteValue();
        abyte2[0] = 91;
        abyte2[1] = byte0;
        abyte2[2] = (byte)mPackageSn;
        aobj = abyte2;
        if (true) goto _L11; else goto _L10
_L10:
        return ((byte []) (aobj));
    }

    public byte[] createResponseSportDataCmdArray(byte byte0)
    {
        return (new byte[] {
            91, byte0, (byte)mPackageSn
        });
    }

    public void getHourMinute(int i)
    {
        int k = 0;
        for (int j = 0; j < i; j++)
        {
            int l = k / 60;
            mRecordDataHour[j] = l;
            mRecordDataMinute[j] = k % 60;
            k += 30;
        }

    }

    public String intToString(int i)
    {
        return String.format("%02d", new Object[] {
            Integer.valueOf(i)
        });
    }

    public int pareseQueryFirmwareVersionResponse(byte abyte0[])
    {
        boolean flag = false;
        for (int i = 0; i < abyte0.length; i++)
        {
            System.out.print((new StringBuilder()).append(" ").append(Integer.toHexString(abyte0[i] & 0xff | 0xffffff00).substring(6)).toString());
        }

        Debug.logBle("");
        char c;
        if (abyte0[0] != 91 || abyte0[1] != 16)
        {
            c = '\uFC18';
        } else
        {
            mPackageSn = abyte0[2];
            c = flag;
            if (abyte0[2] == 0)
            {
                int k = abyte0[3] << 8 & 0xff00 | abyte0[4] & 0xff;
                String s = "";
                String s1;
                if (abyte0.length >= 11)
                {
                    int j = 5;
                    do
                    {
                        s1 = s;
                        if (j >= 11)
                        {
                            break;
                        }
                        if (j == 10)
                        {
                            s = (new StringBuilder()).append(s).append(Integer.toHexString(abyte0[j] & 0xff)).toString();
                        } else
                        {
                            s = (new StringBuilder()).append(s).append(Integer.toHexString(abyte0[j] & 0xff)).append("-").toString();
                        }
                        j++;
                    } while (true);
                } else
                {
                    s1 = "";
                }
                Debug.logBle((new StringBuilder()).append("get deviceid success :deviceId\uFF1A").append(s1).toString());
                Debug.logBle((new StringBuilder()).append("get deviceid mFirmWareVersion\uFF1A").append(k).toString());
                if (s1.equals(""))
                {
                    Keeper.setDeviceId(mContext, Keeper.getBindDeviceMacAddress(mContext));
                } else
                {
                    Keeper.setDeviceId(mContext, s1);
                }
                Keeper.setDeviceRomVersion(mContext, String.valueOf(k));
                Keeper.setDeviceRomVersion(mContext, String.valueOf(deviceInfo.device_type));
                deviceInfo.deviceId = s1;
                deviceInfo.firmware_version = k;
                deviceInfo.protocol_version = 0;
                return 0;
            }
        }
        return c;
    }

    public int parseSetTimeIntervalRespone(byte abyte0[])
    {
        Debug.logBle((new StringBuilder()).append("ParseSetIntervalRespond:").append(abyte0[0]).append(" ").append(abyte0[1]).append(" ").append(abyte0[2]).toString());
        if (abyte0[0] != 91 || abyte0[1] != 2)
        {
            return -1000;
        } else
        {
            mPackageSn = abyte0[2] & 0xff;
            return 0;
        }
    }

    public Object parseSportData(byte abyte0[])
    {
        Debug.logBleByTag("braceleQoneSyncData", Helper.bytesToHexString(abyte0));
        int j = abyte0.length;
        int i = 3;
        if (abyte0[0] == 90 || abyte0[1] == 91)
        {
            if (abyte0[1] == 4 || abyte0[1] == 3)
            {
                mPackageSn = abyte0[2] & 0xff;
                boolean flag;
                if (mPackageSn == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    i = 8;
                    mAllDataOk = false;
                    mStepDataYear = abyte0[3] & 0xff;
                    mStepDataMonth = abyte0[4] & 0xff;
                    mStepDataDate = abyte0[5] & 0xff;
                    mStepTimeInterval = abyte0[6] & 0xff;
                    oneDataRecordCount = abyte0[7] & 0xff;
                    String s = (new StringBuilder()).append(String.valueOf(mStepDataYear + 2000)).append(intToString(mStepDataMonth)).append(intToString(mStepDataDate)).toString();
                    Debug.logBle((new StringBuilder()).append(s).append("\u8BB0\u5F55\u6761\u6570\uFF1A").append(oneDataRecordCount).toString());
                    mTmpSportDataArrayOfByte = new byte[144];
                }
                for (; i < j; i++)
                {
                    mTmpSportDataArrayOfByte[mTmpSportDataArrayOfByteIndex] = abyte0[i];
                    mTmpSportDataArrayOfByteIndex = mTmpSportDataArrayOfByteIndex + 1;
                }

            } else
            {
                return Integer.valueOf(-1000);
            }
        } else
        {
            return Integer.valueOf(-1000);
        }
        if (mPackageSn != 255) goto _L2; else goto _L1
_L1:
        Debug.logBle("all sportdata ok");
        convertSaveSportData();
        mOneDayDataOk = true;
        mAllDataOk = true;
        mTmpSportDataArrayOfByteIndex = 0;
        mTmpSportDataArrayOfByte = new byte[144];
_L4:
        return Integer.valueOf(0);
_L2:
        if (mPackageSn == 254)
        {
            (new StringBuilder()).append(String.valueOf(mStepDataYear + 2000)).append(intToString(mStepDataMonth)).append(intToString(mStepDataDate)).toString();
            convertSaveSportData();
            mTmpSportDataArrayOfByteIndex = 0;
            mTmpSportDataArrayOfByte = new byte[144];
            mOneDayDataOk = true;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int parseStartUpgradeResponse(byte abyte0[])
    {
        Debug.logBle((new StringBuilder()).append("startRsp:").append(Helper.bytesToHexString(abyte0)).toString());
        if (abyte0[0] != 91 || abyte0[1] != 17)
        {
            return -1000;
        } else
        {
            mPackageSn = abyte0[2];
            mUpgradeState = abyte0[3] & 0xff;
            mSendPackageNum = 0;
            return 0;
        }
    }

    public int parseSyncParamsResponse(byte abyte0[])
    {
        Debug.logBle((new StringBuilder()).append("ParseSyncParameterRespond:").append(abyte0[0]).append(" ").append(abyte0[1]).append(" ").append(abyte0[2]).toString());
        if (abyte0[0] != 91 || abyte0[1] != 1)
        {
            return -1000;
        } else
        {
            mPackageSn = abyte0[2] & 0xff;
            return 0;
        }
    }

    public int parseUpdateResponseData(byte abyte0[])
    {
        switch (pareseCmdResponseType)
        {
        default:
            return 0;

        case 80001: 
            return parseStartUpgradeResponse(abyte0);

        case 80002: 
            return parseUpgradeSendPackageResponse(abyte0);

        case 80003: 
            return parseUpgradeNextPackageResponse(abyte0);
        }
    }

    public int parseUpgradeNextPackageResponse(byte abyte0[])
    {
        for (int i = 0; i < abyte0.length; i++)
        {
            System.out.print((new StringBuilder()).append(" ").append(Integer.toHexString(abyte0[i] & 0xff | 0xffffff00).substring(6)).toString());
        }

        Debug.logBle("");
        if (abyte0[0] != 90 || abyte0[1] != 19)
        {
            return -1000;
        }
        mPackageSn = abyte0[2];
        mSendPackageNum = abyte0[3] << 8 & 0xff00 | abyte0[4] & 0xff;
        if (abyte0[3] == -1 && abyte0[4] == -1)
        {
            Debug.logBle("---:mAllPackageReceivOver = true");
            mAllPackageReceivOver = true;
            return 0;
        } else
        {
            Debug.logBle("---:mNextPackageRequest = true");
            mNextPackageRequest = true;
            return 0;
        }
    }

    public int parseUpgradeSendPackageResponse(byte abyte0[])
    {
        mReTransferDataFlag = false;
        if (abyte0[0] != 91 || abyte0[1] != 18)
        {
            return -1000;
        }
        mPackageSn = abyte0[2];
        mSendPackageNum = abyte0[3] << 8 & 0xff00 | abyte0[4] & 0xff;
        Debug.logBle((new StringBuilder()).append("--package num: ").append(mSendPackageNum).toString());
        for (int i = 0; i < 15; i++)
        {
            mReceiveStaus[i] = abyte0[i + 5];
        }

        convertRetransDataPackageNum();
        return 0;
    }
}
