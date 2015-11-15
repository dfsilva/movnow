// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.remotecontrol.bletask;

import android.content.Context;
import android.util.Log;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bleservice.util.Helper;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

public class BleSendAirCmdTask extends BleTask
{

    private int defaultByteSize;
    private byte firstByte[];
    private final byte headone = 48;
    private final byte headtwo = 1;
    boolean isReSend;
    int mRetransData[];
    private Map map;
    private byte receiveByte[];

    public BleSendAirCmdTask(Context context, BleCallBack blecallback, byte abyte0[])
    {
        super(context, blecallback);
        firstByte = new byte[20];
        defaultByteSize = 17;
        map = new HashMap();
        isReSend = false;
        receiveByte = abyte0;
    }

    public static byte[] byteMerger(byte abyte0[], byte abyte1[])
    {
        byte abyte2[] = new byte[abyte0.length + abyte1.length];
        System.arraycopy(abyte0, 0, abyte2, 0, abyte0.length);
        System.arraycopy(abyte1, 0, abyte2, abyte0.length, abyte1.length);
        return abyte2;
    }

    public void convertRetransDataPackageNum(byte abyte0[])
    {
        int j = 0;
        mRetransData = new int[120];
        for (int i = 0; i < 15; i++)
        {
            for (int k = 0; k < 8;)
            {
                int l = j;
                if ((abyte0[i + 5] & 1 << k & 0xff) != 0)
                {
                    mRetransData[j] = k + 1 + i * 8;
                    l = j + 1;
                    isReSend = true;
                    Log.v("lzf", (new StringBuilder()).append("isReSend=").append(isReSend).toString());
                }
                k++;
                j = l;
            }

        }

    }

    public void doSendLongByte()
    {
label0:
        {
            byte abyte3[] = new byte[receiveByte.length + 2 + 2];
            int k = 0 + 1;
            abyte3[0] = 48;
            int i = k + 1;
            abyte3[k] = 1;
            int i1 = (byte)((byte)48 + 1);
            for (k = 0; k < receiveByte.length;)
            {
                i1 = (byte)(receiveByte[k] + i1);
                abyte3[i] = receiveByte[k];
                k++;
                i++;
            }

            byte byte0 = (byte)(i1 - 1);
            k = i + 1;
            abyte3[i] = -1;
            abyte3[k] = byte0;
            byte abyte0[] = firstByte;
            i = 0 + 1;
            abyte0[0] = 90;
            abyte0 = firstByte;
            k = i + 1;
            abyte0[i] = 32;
            abyte0 = firstByte;
            i = k + 1;
            int k1 = 0 + 1;
            abyte0[k] = (byte)k1;
            k = receiveByte.length;
            Log.v("-- lzf \u5305\u957F\u5EA6:", (new StringBuilder()).append(k).append("").toString());
            abyte0 = firstByte;
            i1 = i + 1;
            abyte0[i] = (byte)((0xff00 & k) >> 8);
            abyte0 = firstByte;
            i = i1 + 1;
            abyte0[i1] = (byte)(k & 0xff);
            abyte0 = firstByte;
            k = i + 1;
            abyte0[i] = 0;
            abyte0 = firstByte;
            i = k + 1;
            abyte0[k] = 0;
            k = bleDeviceProfile.crc_ccitt(receiveByte, receiveByte.length);
            abyte0 = firstByte;
            i1 = i + 1;
            abyte0[i] = (byte)((0xff00 & k) >> 8);
            abyte0 = firstByte;
            i = i1 + 1;
            abyte0[i1] = (byte)(k & 0xff);
            firstByte[i] = 32;
            Log.v("-- lzf firstByte", Helper.bytesToHexString(firstByte));
            sendCmdToBleDevice(firstByte);
            int l1 = abyte3.length;
            k = 0;
            i1 = l1 / defaultByteSize;
            i = i1;
            if (l1 % defaultByteSize != 0)
            {
                i = i1 + 1;
                k = l1 % defaultByteSize;
            }
            for (int j1 = 0; j1 < i; j1++)
            {
                byte abyte1[];
                int i2;
                if (j1 == i - 1)
                {
                    abyte1 = new byte[k + 3];
                    abyte1[0] = 90;
                    abyte1[1] = 32;
                    abyte1[2] = -2;
                } else
                {
                    abyte1 = new byte[20];
                    abyte1[0] = 90;
                    abyte1[1] = 32;
                    k1++;
                    abyte1[2] = (byte)k1;
                }
                for (i2 = 3; i2 < abyte1.length; i2++)
                {
                    abyte1[i2] = abyte3[(defaultByteSize * j1 + i2) - 3];
                }

                map.put(Integer.valueOf(j1), abyte1);
                Log.v((new StringBuilder()).append("-- lzf --\u5F53\u524D\u6B21\u6570i").append(j1).append("--\u603B\u6B21\u6570k--").append(i).toString(), Helper.bytesToHexString(abyte1));
                System.out.println((new StringBuilder()).append("\u9996\u6B21\u53D1\u9001\u7684\u957F\u5305\u5206\u5305\u5305\u5B57\u8282\u7801\uFF1A").append(Helper.bytesToHexString(abyte1)).toString());
                sendCmdToBleDevice(abyte1);
            }

            waitResponse(1000);
            long l4 = System.currentTimeMillis();
            long l2 = System.currentTimeMillis();
            do
            {
                long l3;
                do
                {
                    if (l2 - l4 >= 3000L)
                    {
                        break label0;
                    }
                    l3 = System.currentTimeMillis();
                    l2 = l3;
                } while (!mDeviceRespondOk);
                if (!isReSend)
                {
                    break;
                }
                int l = getRetransData();
                for (int j = 0; j < l; j++)
                {
                    byte abyte2[] = (byte[])map.get(Integer.valueOf(mRetransData[j]));
                    System.out.println((new StringBuilder()).append("\u91CD\u53D1\u53D1\u9001\u7684\u957F\u5305\u5206\u5305\u5305\u5B57\u8282\u7801\uFF1A").append(Helper.bytesToHexString(abyte2)).toString());
                    if (abyte2 != null)
                    {
                        sendCmdToBleDevice((byte[])map.get(Integer.valueOf(mRetransData[j])));
                    }
                }

                waitResponse(1000);
                l2 = l3;
            } while (true);
            System.out.println("\u53D1\u9001\u7A7A\u8C03\u7B80\u7801\u5B8C\u6210");
        }
    }

    public void doSendShortByte()
    {
        byte abyte0[] = new byte[receiveByte.length + 4];
        int j = 0 + 1;
        abyte0[0] = 48;
        int i = j + 1;
        abyte0[j] = 1;
        byte byte1 = (byte)((byte)48 + 1);
        for (j = 0; j < receiveByte.length;)
        {
            byte1 = (byte)(receiveByte[j] + byte1);
            abyte0[i] = receiveByte[j];
            j++;
            i++;
        }

        byte byte0 = (byte)(byte1 - 1);
        j = i + 1;
        abyte0[i] = -1;
        abyte0[j] = byte0;
        System.out.println((new StringBuilder()).append("\u53D1\u9001\u7684\u77ED\u5305\u5B57\u8282\u7801\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        sendCmdToBleDevice(abyte0);
    }

    public void doWork()
    {
        if (receiveByte.length <= 17)
        {
            doSendShortByte();
            return;
        } else
        {
            doSendLongByte();
            return;
        }
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

    protected int parseData(byte abyte0[])
    {
        Log.v("lzf", (new StringBuilder()).append("\u91CD\u53D1\u8FD4\u56DE\u8282\u7801\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        convertRetransDataPackageNum(abyte0);
        return 0;
    }
}
