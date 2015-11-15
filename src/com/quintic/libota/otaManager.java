// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.quintic.libota;

import android.util.Log;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.concurrent.Semaphore;

// Referenced classes of package com.quintic.libota:
//            BluetoothLeInterface

public class otaManager
{

    private static int $SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd[];
    private static final String TAG = com/quintic/libota/otaManager.getSimpleName();
    int mByteRate;
    int mElapsedTime;
    String mFilePath;
    BluetoothLeInterface mOtaIntf;
    private final int mPacketSize = 256;
    private int mPercent;
    bleGlobalVariables.otaResult mRetValue;
    private boolean mShouldStop;
    private int mStartOffset;
    private final int mTimeout = 12;
    private Semaphore semp;
    Runnable updateRunnable;

    static int[] $SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd()
    {
        int ai[] = $SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[bleGlobalVariables.otaCmd.values().length];
        try
        {
            ai[bleGlobalVariables.otaCmd.OTA_CMD_BRICK_DATA.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai[bleGlobalVariables.otaCmd.OTA_CMD_DATA_VERIFY.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[bleGlobalVariables.otaCmd.OTA_CMD_EXECUTION_NEW_CODE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[bleGlobalVariables.otaCmd.OTA_CMD_META_DATA.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        $SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd = ai;
        return ai;
    }

    public otaManager()
    {
        mStartOffset = 0;
        mPercent = 0;
        semp = null;
        mShouldStop = false;
        mFilePath = null;
        mByteRate = 0;
        mElapsedTime = 0;
        mRetValue = bleGlobalVariables.otaResult.OTA_RESULT_SUCCESS;
        updateRunnable = new Runnable() {

            final otaManager this$0;

            public void run()
            {
                otaUpdateProcess(mFilePath);
            }

            
            {
                this$0 = otaManager.this;
                super();
            }
        };
    }

    private byte cmdToValue(bleGlobalVariables.otaCmd otacmd)
    {
        switch ($SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd()[otacmd.ordinal()])
        {
        default:
            return 0;

        case 1: // '\001'
            return 1;

        case 2: // '\002'
            return 2;

        case 3: // '\003'
            return 3;

        case 4: // '\004'
            return 4;
        }
    }

    private int getOffset()
    {
        if (waitSemaphore(semp))
        {
            return mStartOffset;
        } else
        {
            return -1;
        }
    }

    private void notifyReadDataCompleted()
    {
        releaseSemaphore(semp);
    }

    private void notifyVerifyCmdDone()
    {
        releaseSemaphore(semp);
    }

    private int otaSendBrickData(FileInputStream fileinputstream, int i)
        throws IOException
    {
        byte abyte0[];
        int j;
        abyte0 = new byte[i];
        j = fileinputstream.read(abyte0);
        if (j > 0) goto _L2; else goto _L1
_L1:
        Log.w(TAG, "otaSendBrickData:No data read from file");
        j = -1;
_L4:
        return j;
_L2:
        int k = i;
        if (j < i)
        {
            k = j;
        }
        short word0 = cmdToValue(bleGlobalVariables.otaCmd.OTA_CMD_BRICK_DATA);
        i = 0;
        do
        {
label0:
            {
                if (i < k)
                {
                    break label0;
                }
                if (!otaSendPacket(bleGlobalVariables.otaCmd.OTA_CMD_BRICK_DATA, word0, abyte0, k))
                {
                    Log.e(TAG, "otaSendBrickData:failed to send packet");
                    return -2;
                }
            }
            if (true)
            {
                continue;
            }
            word0 = (short)((abyte0[i] & 0xff) + word0);
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private int otaSendMetaData(FileInputStream fileinputstream)
        throws IOException
    {
        byte abyte0[];
        short word1;
        int j;
        abyte0 = new byte[2];
        fileinputstream.read(abyte0);
        word1 = (short)(((abyte0[1] & 0xff) << 8) + (abyte0[0] & 0xff));
        abyte0 = new byte[word1];
        j = fileinputstream.read(abyte0);
        if (j >= 0) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        short word0 = cmdToValue(bleGlobalVariables.otaCmd.OTA_CMD_META_DATA);
        int i = 0;
        do
        {
label0:
            {
                if (i < j)
                {
                    break label0;
                }
                if (otaSendPacket(bleGlobalVariables.otaCmd.OTA_CMD_META_DATA, word0, abyte0, word1))
                {
                    return j + 2;
                }
            }
            if (true)
            {
                continue;
            }
            word0 = (short)((abyte0[i] & 0xff) + word0);
            i++;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private boolean otaSendPacket(bleGlobalVariables.otaCmd otacmd, short word0, byte abyte0[], int i)
    {
        byte byte0;
        byte abyte1[];
        byte abyte2[];
        byte0 = cmdToValue(otacmd);
        abyte1 = new byte[2];
        abyte1[0] = (byte)word0;
        abyte1[1] = (byte)(word0 >> 8);
        abyte2 = new byte[3];
        $SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd()[otacmd.ordinal()];
        JVM INSTR tableswitch 1 4: default 72
    //                   1 83
    //                   2 83
    //                   3 173
    //                   4 173;
           goto _L1 _L2 _L2 _L3 _L3
_L1:
        Log.e(TAG, "otaSendPacket:unknown cmd type");
        return false;
_L2:
        abyte2[0] = (byte)(i + 1);
        abyte2[1] = (byte)(i + 1 >> 8);
        abyte2[2] = byte0;
        word0 = abyte2.length + i + abyte1.length;
        otacmd = new byte[word0];
        System.arraycopy(abyte2, 0, otacmd, 0, abyte2.length);
        System.arraycopy(abyte0, 0, otacmd, abyte2.length, i);
        System.arraycopy(abyte1, 0, otacmd, abyte2.length + i, abyte1.length);
_L7:
        i = word0;
        break MISSING_BLOCK_LABEL_166;
_L3:
        word0 = abyte2.length + abyte1.length;
        otacmd = new byte[word0];
        otacmd[0] = 1;
        otacmd[1] = 0;
        otacmd[2] = byte0;
        otacmd[3] = abyte1[0];
        otacmd[4] = abyte1[1];
        continue; /* Loop/switch isn't completed */
_L5:
        int j;
        if (i <= 0)
        {
            return true;
        }
        boolean flag;
        if (i > 20)
        {
            j = 20;
        } else
        {
            j = i;
        }
        abyte0 = new byte[j];
        System.arraycopy(otacmd, word0 - i, abyte0, 0, j);
        flag = otaWrite(abyte0);
        if (!flag)
        {
            return false;
        }
        break MISSING_BLOCK_LABEL_269;
        abyte0;
        abyte0.printStackTrace();
        i -= j;
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void otaSendResetCmd()
    {
        short word0 = cmdToValue(bleGlobalVariables.otaCmd.OTA_CMD_EXECUTION_NEW_CODE);
        otaSendPacket(bleGlobalVariables.otaCmd.OTA_CMD_EXECUTION_NEW_CODE, word0, null, 0);
    }

    private boolean otaSendVerifyCmd()
    {
        boolean flag1 = false;
        short word0 = cmdToValue(bleGlobalVariables.otaCmd.OTA_CMD_DATA_VERIFY);
        boolean flag = flag1;
        if (otaSendPacket(bleGlobalVariables.otaCmd.OTA_CMD_DATA_VERIFY, word0, null, 0))
        {
            flag = flag1;
            if (waitVerifyCmdDone())
            {
                flag = true;
            }
        }
        return flag;
    }

    private void otaUpdateProcess(String s)
    {
        int l;
        s = new FileInputStream(s);
        l = s.available();
        if (l != 0) goto _L2; else goto _L1
_L1:
        int i1;
        try
        {
            s.close();
            serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_FW_SIZE_ERROR);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
          goto _L3
_L2:
        i1 = otaSendMetaData(s);
        if (i1 >= 0) goto _L5; else goto _L4
_L4:
        s.close();
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_SEND_META_ERROR);
        return;
_L3:
        Log.i(TAG, "otaUpdateProcess Exit");
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_SUCCESS);
        return;
_L5:
        int i = getOffset();
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        Log.e(TAG, "wait cmd OTA_CMD_META_DATA timeout");
        s.close();
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_META_RESPONSE_TIMEOUT);
        return;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        s.skip(i);
        int j = 0;
        long l1;
        Log.d(TAG, (new StringBuilder("offset=")).append(i).append(" meta size ").append(i1).toString());
        l1 = Calendar.getInstance().getTimeInMillis();
_L7:
        int k = otaSendBrickData(s, 256);
        if (k >= 0)
        {
            break MISSING_BLOCK_LABEL_198;
        }
        s.close();
        Log.e(TAG, "otaUpdateProcess Exit for some transfer issue");
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_DATA_RESPONSE_TIMEOUT);
        return;
        if (!waitReadDataCompleted())
        {
            Log.e(TAG, "waitReadDataCompleted timeout");
            serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_DATA_RESPONSE_TIMEOUT);
            return;
        }
        k = i + k;
        mPercent = (k * 100) / l;
        j += 256;
        long l2 = Calendar.getInstance().getTimeInMillis();
        mElapsedTime = (int)((l2 - l1) / 1000L);
        mByteRate = (int)((long)(j * 1000) / (l2 - l1));
        i = k;
        if (k < l - i1) goto _L7; else goto _L6
_L6:
        if (!otaSendVerifyCmd())
        {
            s.close();
            serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_FW_VERIFY_ERROR);
            return;
        }
        mPercent = 100;
        otaSendResetCmd();
        s.close();
          goto _L3
    }

    private boolean otaWrite(byte abyte0[])
        throws InterruptedException
    {
        if (shouldStopUpdate())
        {
            Log.e(TAG, "otaWrite:Stopped for some reason");
            return false;
        }
        if (!mOtaIntf.writeCharacteristic(abyte0))
        {
            Log.e(TAG, "Failed to write characteristic");
            return false;
        } else
        {
            return waitWriteDataCompleted();
        }
    }

    private void releaseSemaphore(Semaphore semaphore)
    {
        semaphore.release();
    }

    private void serErrorCode(bleGlobalVariables.otaResult otaresult)
    {
        mRetValue = otaresult;
    }

    private void setOffset(int i)
    {
        mStartOffset = i;
        releaseSemaphore(semp);
    }

    private boolean shouldStopUpdate()
    {
        return mShouldStop;
    }

    private bleGlobalVariables.otaCmd valueToCmd(int i)
    {
        switch (i & 0xff)
        {
        default:
            return null;

        case 1: // '\001'
            return bleGlobalVariables.otaCmd.OTA_CMD_META_DATA;

        case 2: // '\002'
            return bleGlobalVariables.otaCmd.OTA_CMD_BRICK_DATA;

        case 3: // '\003'
            return bleGlobalVariables.otaCmd.OTA_CMD_DATA_VERIFY;

        case 4: // '\004'
            return bleGlobalVariables.otaCmd.OTA_CMD_EXECUTION_NEW_CODE;
        }
    }

    private boolean waitReadDataCompleted()
    {
        return waitSemaphore(semp);
    }

    private boolean waitSemaphore(Semaphore semaphore)
    {
        int i = 0;
_L5:
        if (i < 12000) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (semaphore.tryAcquire())
        {
            return true;
        }
        try
        {
            Thread.sleep(1L);
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        if (shouldStopUpdate()) goto _L1; else goto _L3
_L3:
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean waitVerifyCmdDone()
    {
        return waitSemaphore(semp);
    }

    private boolean waitWriteDataCompleted()
    {
        return waitSemaphore(semp);
    }

    public void notifyWriteDataCompleted()
    {
        releaseSemaphore(semp);
    }

    public bleGlobalVariables.otaResult otaGetProcess(int ai[])
    {
        if (ai.length < 8)
        {
            Log.e(TAG, "buffer is too small,at least 8 intgent");
            return bleGlobalVariables.otaResult.OTA_RESULT_INVALID_ARGUMENT;
        } else
        {
            Arrays.fill(ai, 0);
            ai[0] = mPercent;
            ai[1] = mByteRate;
            ai[2] = mElapsedTime;
            return mRetValue;
        }
    }

    public void otaGetResult(byte abyte0[])
    {
        bleGlobalVariables.otaCmd otacmd;
        otacmd = valueToCmd(abyte0[2] & 0xff);
        if (otacmd == null)
        {
            otaPrintBytes(abyte0, "Notify data: ");
            serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_RECEIVED_INVALID_PACKET);
            return;
        }
        abyte0[3];
        JVM INSTR tableswitch 0 5: default 72
    //                   0 98
    //                   1 108
    //                   2 118
    //                   3 128
    //                   4 138
    //                   5 148;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_INVALID_ARGUMENT);
_L9:
        if (mRetValue != bleGlobalVariables.otaResult.OTA_RESULT_SUCCESS)
        {
            otaPrintBytes(abyte0, "Notify data: ");
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_SUCCESS);
        continue; /* Loop/switch isn't completed */
_L3:
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_PKT_CHECKSUM_ERROR);
        continue; /* Loop/switch isn't completed */
_L4:
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_PKT_LEN_ERROR);
        continue; /* Loop/switch isn't completed */
_L5:
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_DEVICE_NOT_SUPPORT_OTA);
        continue; /* Loop/switch isn't completed */
_L6:
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_FW_SIZE_ERROR);
        continue; /* Loop/switch isn't completed */
_L7:
        serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_FW_VERIFY_ERROR);
        if (true) goto _L9; else goto _L8
_L8:
        switch ($SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd()[otacmd.ordinal()])
        {
        default:
            Log.i(TAG, (new StringBuilder("Exit ")).append(abyte0[2] & 0xff).toString());
            serErrorCode(bleGlobalVariables.otaResult.OTA_RESULT_INVALID_ARGUMENT);
            return;

        case 1: // '\001'
            setOffset((short)((abyte0[4] & 0xff) + ((abyte0[5] & 0xff) << 8)));
            return;

        case 2: // '\002'
            short word0 = (short)((abyte0[4] & 0xff) + ((abyte0[5] & 0xff) << 8));
            notifyReadDataCompleted();
            return;

        case 3: // '\003'
            notifyVerifyCmdDone();
            Log.i(TAG, "OTA_CMD_DATA_VERIFY");
            return;

        case 4: // '\004'
            Log.i(TAG, "This should never happened");
            break;
        }
        return;
    }

    public void otaPrintBytes(byte abyte0[], String s)
    {
        if (abyte0 == null)
        {
            return;
        }
        StringBuilder stringbuilder = new StringBuilder(abyte0.length);
        int j = abyte0.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                Log.i(TAG, (new StringBuilder(String.valueOf(s))).append(" :").append(stringbuilder.toString()).toString());
                return;
            }
            stringbuilder.append(String.format("%02X ", new Object[] {
                Byte.valueOf(abyte0[i])
            }));
            i++;
        } while (true);
    }

    public bleGlobalVariables.otaResult otaStart(String s, BluetoothLeInterface bluetoothleinterface)
    {
        if (s.isEmpty() || bluetoothleinterface == null)
        {
            Log.e(TAG, "otaUpdateInit:argument invalid");
            return bleGlobalVariables.otaResult.OTA_RESULT_INVALID_ARGUMENT;
        } else
        {
            mFilePath = s;
            mOtaIntf = bluetoothleinterface;
            mShouldStop = false;
            mPercent = 0;
            mByteRate = 0;
            mElapsedTime = 0;
            semp = new Semaphore(0);
            bluetoothleinterface.setCharacteristicNotification(true);
            (new Thread(updateRunnable)).start();
            return bleGlobalVariables.otaResult.OTA_RESULT_SUCCESS;
        }
    }

    public void otaStop()
    {
        mShouldStop = true;
    }


}
