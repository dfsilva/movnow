// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.watercup.bletask;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bledevice.WaterCupDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.hw.bleservice.util.NumberToByteArray;
import com.veclink.watercup.bean.DrinkWaterData;
import java.util.List;

public class BleSetDrinkPlanTask extends BleTask
{

    public int FIRST_TRANSFER_PACKAGE_DATA_LENGTH;
    public int FIRST_TRANSFER_PACKAGE_DATA_OFFSET;
    public int TRANSFER_PACKAGE_DATA_LENGTH;
    public int TRANSFER_PACKAGE_DATA_OFFSET;
    private int UPGRADE_DATA_PACKAGE_LENTH;
    private List drinkPlanList;
    private int mEndDataLength;
    private int mEndPackageLength;
    byte mFirmwareBuffer[];
    byte mPackageBuffer[];
    private byte mSendCmd[];
    private int mStartDataLength;
    private int mTotalDataNumber;
    private int mTotalPackageNumber;
    byte mTransferBuffer[];
    private int mUpgradeFileLenth;
    private int progress;
    private WaterCupDevice waterCupDevice;

    public BleSetDrinkPlanTask(Context context, BleCallBack blecallback, List list)
    {
        super(context, blecallback);
        mUpgradeFileLenth = 0;
        mTotalPackageNumber = 0;
        mEndPackageLength = 0;
        mTotalDataNumber = 0;
        mStartDataLength = 0;
        mEndDataLength = 0;
        mTransferBuffer = new byte[20];
        mPackageBuffer = new byte[1024];
        FIRST_TRANSFER_PACKAGE_DATA_LENGTH = 9;
        TRANSFER_PACKAGE_DATA_LENGTH = 17;
        FIRST_TRANSFER_PACKAGE_DATA_OFFSET = 11;
        TRANSFER_PACKAGE_DATA_OFFSET = 3;
        UPGRADE_DATA_PACKAGE_LENTH = 1024;
        mSendCmd = new byte[20];
        drinkPlanList = list;
        waterCupDevice = (WaterCupDevice)bleDeviceProfile;
    }

    public void clearUpgradeSendCmd()
    {
        mSendCmd = new byte[20];
        byte abyte0[] = mSendCmd;
        BaseBleDevice basebledevice = bleDeviceProfile;
        abyte0[0] = 90;
        abyte0 = mSendCmd;
        basebledevice = bleDeviceProfile;
        abyte0[1] = 5;
    }

    public void doWork()
    {
        this;
        JVM INSTR monitorenter ;
        int k2;
        k2 = UPGRADE_DATA_PACKAGE_LENTH;
        readFirmwareFile();
        int i = bleDeviceProfile.crc_ccitt(mFirmwareBuffer, mUpgradeFileLenth);
        Debug.logBle((new StringBuilder()).append("fileCrc:0x").append(Integer.toHexString(i)).toString());
        bleDeviceProfile.pareseCmdResponseType = 0x13881;
        mDeviceRespondOk = false;
        mSendCmd = waterCupDevice.createSetDrinkPlanCmd(mTotalPackageNumber);
        Debug.logBleByTag("BleSetDrinkPlanTask cmd is ", Helper.bytesToHexString(mSendCmd));
        mDeviceRespondOk = false;
        sendCmdToBleDevice(mSendCmd);
        Debug.logBle("wait for device response  BleSetDrinkPlanTask cmd");
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u5347\u7EA7\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
        this;
        JVM INSTR monitorexit ;
        return;
        if (bleDeviceProfile.mUpgradeState == 0) goto _L2; else goto _L1
_L1:
        if (false) goto _L4; else goto _L3
_L3:
        Debug.logBle("device response  BleSetDrinkPlanTask cmd can begin...");
        bleCallBack.sendOnStartMessage(Integer.valueOf(0));
        int l = 0;
_L70:
        if (l >= mTotalPackageNumber) goto _L6; else goto _L5
_L5:
        progress = (int)(((float)l / (float)mTotalPackageNumber) * 100F);
        bleCallBack.sendOnProgressMessage(Integer.valueOf(progress));
        bleCallBack.sendOnProgressMessage(Integer.valueOf(progress));
        byte byte0;
        int k;
        boolean flag;
        int l1;
        l1 = 1;
        k = 0;
        flag = false;
        byte0 = 1;
        Object obj;
        int j;
        int i1;
        if (mTotalPackageNumber == 1)
        {
            i1 = 0;
        } else
        {
            i1 = l + 1;
        }
        Debug.logBle((new StringBuilder()).append("send packageSequenceNumber is:").append(i1).toString());
        clearUpgradeSendCmd();
        bleDeviceProfile.clearNextPackageRequest();
        bleDeviceProfile.pareseCmdResponseType = 0x13882;
        if (mTotalPackageNumber - l != 1) goto _L8; else goto _L7
_L7:
        flag = true;
        if (mEndPackageLength % 17 == 0) goto _L10; else goto _L9
_L9:
        j = mEndPackageLength / 17 + 2;
_L13:
        mTotalDataNumber = j;
        mStartDataLength = 0;
        mEndDataLength = mEndPackageLength % 17;
        j = 0;
_L12:
        if (j >= mEndPackageLength)
        {
            break; /* Loop/switch isn't completed */
        }
        mPackageBuffer[j] = mFirmwareBuffer[k2 * l + j];
        j++;
        if (true) goto _L12; else goto _L11
_L2:
        bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L10:
        j = mEndPackageLength / 17 + 1;
          goto _L13
_L11:
        int j1;
        j1 = bleDeviceProfile.crc_ccitt(mPackageBuffer, mEndPackageLength);
        Debug.logBle((new StringBuilder()).append("last package fileCrc:0x").append(Integer.toHexString(j1)).toString());
_L29:
        mDeviceRespondOk = false;
        j = mEndDataLength;
        j = mStartDataLength;
        int k1 = 0;
_L23:
        if (k1 >= mTotalDataNumber) goto _L15; else goto _L14
_L14:
        if (flag) goto _L17; else goto _L16
_L16:
        if (mTotalDataNumber - k1 != 1) goto _L17; else goto _L18
_L18:
        byte byte1;
        byte1 = -2;
        j = 1;
        Debug.logBle((new StringBuilder()).append("last trans:").append(Integer.toHexString(-2).substring(6)).toString());
_L31:
        clearUpgradeSendCmd();
        mSendCmd[2] = byte1;
        if (l1 == 0) goto _L20; else goto _L19
_L19:
        Debug.logBle((new StringBuilder()).append(" isStartDataNumber start package:").append(i1).toString());
        if (!flag) goto _L22; else goto _L21
_L21:
        mSendCmd[3] = (byte)(mEndPackageLength >> 8 & 0xff);
        mSendCmd[4] = (byte)(mEndPackageLength & 0xff);
_L33:
        byte abyte0[];
        mSendCmd[5] = (byte)(i1 >> 8 & 0xff);
        mSendCmd[6] = (byte)(i1 & 0xff);
        mSendCmd[7] = (byte)(j1 >> 8 & 0xff);
        mSendCmd[8] = (byte)(j1 & 0xff);
        abyte0 = mSendCmd;
        WaterCupDevice watercupdevice = waterCupDevice;
        abyte0[9] = 10;
        mSendCmd[10] = (byte)drinkPlanList.size();
        int i2;
        i2 = 0;
        k = j;
_L38:
        mDeviceRespondOk = false;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_783;
        }
        Debug.logBle((new StringBuilder()).append("last longpackage lastsmallpack content is ").append(Helper.bytesToHexString(mSendCmd)).toString());
        sendCmdToBleDevice(mSendCmd);
        Thread.sleep(50L);
_L40:
        byte0 = (byte)(byte1 + 1);
        k1++;
        l1 = i2;
          goto _L23
_L8:
        if (UPGRADE_DATA_PACKAGE_LENTH % 17 == 0) goto _L25; else goto _L24
_L24:
        j = UPGRADE_DATA_PACKAGE_LENTH / 17 + 2;
_L28:
        mTotalDataNumber = j;
        mStartDataLength = 0;
        mEndDataLength = UPGRADE_DATA_PACKAGE_LENTH % 17;
        j = 0;
_L27:
        if (j >= UPGRADE_DATA_PACKAGE_LENTH)
        {
            break; /* Loop/switch isn't completed */
        }
        mPackageBuffer[j] = mFirmwareBuffer[k2 * l + j];
        j++;
        if (true) goto _L27; else goto _L26
_L25:
        j = UPGRADE_DATA_PACKAGE_LENTH / 17 + 1;
          goto _L28
_L26:
        j1 = bleDeviceProfile.crc_ccitt(mPackageBuffer, UPGRADE_DATA_PACKAGE_LENTH);
          goto _L29
_L17:
        j = k;
        byte1 = byte0;
        if (!flag) goto _L31; else goto _L30
_L30:
        j = k;
        byte1 = byte0;
        if (mTotalDataNumber - k1 != 1) goto _L31; else goto _L32
_L32:
        byte1 = -1;
        Debug.logBle((new StringBuilder()).append("last pack last trans:").append(Integer.toHexString(-1).substring(6)).toString());
        j = 1;
          goto _L31
_L22:
        mSendCmd[3] = (byte)(UPGRADE_DATA_PACKAGE_LENTH >> 8 & 0xff);
        mSendCmd[4] = (byte)(UPGRADE_DATA_PACKAGE_LENTH & 0xff);
          goto _L33
_L36:
        if (j >= mEndDataLength) goto _L35; else goto _L34
_L34:
        mSendCmd[j + 3] = mPackageBuffer[j + (k1 - 1) * 17];
        j++;
          goto _L36
_L39:
        k = j;
        i2 = l1;
        int j2;
        if (j2 >= TRANSFER_PACKAGE_DATA_LENGTH) goto _L38; else goto _L37
_L37:
        mSendCmd[j2 + 3] = mPackageBuffer[j2 + (k1 - 1) * 17];
        j2++;
          goto _L39
        abyte0;
        abyte0.printStackTrace();
          goto _L40
_L15:
        waitResponse(5000);
        if (!mDeviceRespondOk) goto _L42; else goto _L41
_L41:
        Debug.logBle("send data respond ok!!!");
_L60:
        if (!bleDeviceProfile.getReTransferDataFlag()) goto _L44; else goto _L43
_L43:
        k1 = bleDeviceProfile.getRetransData();
        BaseBleDevice basebledevice = bleDeviceProfile;
        BaseBleDevice basebledevice2 = bleDeviceProfile;
        basebledevice.pareseCmdResponseType = 0x13882;
        mDeviceRespondOk = false;
        Debug.logBle((new StringBuilder()).append("needreSend data reTotalDataNumber is:").append(k1).toString());
        Debug.logBle((new StringBuilder()).append("data num:").append(mTotalDataNumber).append("(").append(Integer.toHexString(mTotalDataNumber & 0xff | 0xffffff00).substring(6).toUpperCase()).append(")").toString());
        j = 0;
_L49:
        if (j >= k1) goto _L46; else goto _L45
_L45:
        l1 = bleDeviceProfile.mRetransData[j];
        Debug.logBle((new StringBuilder()).append(" renum is ").append(l1).append("(").append(Integer.toHexString(l1 & 0xff | 0xffffff00).substring(6)).append(")").toString());
        clearUpgradeSendCmd();
        mSendCmd[2] = (byte)l1;
        if (l1 != -1) goto _L48; else goto _L47
_L47:
        Debug.logBle("cma---*****");
_L53:
        mDeviceRespondOk = false;
        Debug.logBle((new StringBuilder()).append("do resend data conteent is ").append(Helper.bytesToHexString(mSendCmd)).toString());
        sendCmdToBleDevice(mSendCmd);
        j++;
          goto _L49
_L42:
        Debug.logBle("send data respond timeout!");
        Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u5347\u7EA7\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
_L6:
        if (!bleDeviceProfile.getAllPackageReceivOver()) goto _L51; else goto _L50
_L50:
        Debug.logBle("send drink plan ok!");
        bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L48:
        if (l1 != mTotalDataNumber)
        {
            break MISSING_BLOCK_LABEL_1555;
        }
        Debug.logBle("do resend data!");
        mSendCmd[2] = -2;
        l1 = mTotalDataNumber;
        k = 0;
_L54:
        if (k >= mEndDataLength) goto _L53; else goto _L52
_L52:
        mSendCmd[k + 3] = mPackageBuffer[k + (l1 - 1) * 17];
        k++;
          goto _L54
        if (l1 != 1) goto _L56; else goto _L55
_L55:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_1697;
        }
        mSendCmd[3] = (byte)(mEndPackageLength >> 8 & 0xff);
        mSendCmd[4] = (byte)(mEndPackageLength & 0xff);
_L57:
        mSendCmd[5] = (byte)(i1 >> 8 & 0xff);
        mSendCmd[6] = (byte)(i1 & 0xff);
        mSendCmd[7] = (byte)(j1 >> 8 & 0xff);
        mSendCmd[8] = (byte)(j1 & 0xff);
        basebledevice = mSendCmd;
        WaterCupDevice watercupdevice1 = waterCupDevice;
        basebledevice[9] = 10;
        mSendCmd[10] = (byte)drinkPlanList.size();
          goto _L53
        mSendCmd[3] = (byte)(UPGRADE_DATA_PACKAGE_LENTH >> 8 & 0xff);
        mSendCmd[4] = (byte)(UPGRADE_DATA_PACKAGE_LENTH & 0xff);
          goto _L57
_L59:
        if (k >= TRANSFER_PACKAGE_DATA_LENGTH) goto _L53; else goto _L58
_L58:
        mSendCmd[k + 3] = mPackageBuffer[k + (l1 - 2) * 17];
        k++;
          goto _L59
_L46:
label0:
        {
            waitResponse(5000);
            if (!mDeviceRespondOk)
            {
                break label0;
            }
            Debug.logBle("retransfer respond ok!!!");
        }
          goto _L60
        Debug.logBle("retransfer respond timeout!");
        bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
        this;
        JVM INSTR monitorexit ;
        return;
_L44:
        mDeviceRespondOk = false;
        BaseBleDevice basebledevice1 = bleDeviceProfile;
        BaseBleDevice basebledevice3 = bleDeviceProfile;
        basebledevice1.pareseCmdResponseType = 0x13883;
        clearUpgradeSendCmd();
        basebledevice1 = bleDeviceProfile;
        basebledevice1 = bleDeviceProfile;
        basebledevice1 = bleDeviceProfile;
        sendCmdToBleDevice(new byte[] {
            90, 5, 0, (byte)(i1 >> 8 & 0xff), (byte)(i1 & 0xff)
        });
        waitResponse(5000);
        if (!mDeviceRespondOk) goto _L62; else goto _L61
_L61:
        Debug.logBle("next package---respond ok!!!");
_L64:
        if (!bleDeviceProfile.getAllPackageReceivOver())
        {
            break MISSING_BLOCK_LABEL_1976;
        }
        Debug.logBle("getAllPackageReceivOver ok!");
        progress = 100;
        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
          goto _L6
_L62:
        if (flag) goto _L64; else goto _L63
_L63:
        Debug.logBle("next package---respond error!");
          goto _L64
        if (bleDeviceProfile.getNextPackageRequest()) goto _L66; else goto _L65
_L65:
        Debug.logBle("getNextPackageRequest is false");
        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
          goto _L6
_L51:
        bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
          goto _L4
_L20:
        if (j == 0) goto _L68; else goto _L67
_L67:
        j = 0;
          goto _L36
_L35:
        k = 0;
        i2 = l1;
          goto _L38
_L68:
        j2 = 0;
          goto _L39
_L56:
        k = 0;
          goto _L59
_L66:
        l++;
        if (true) goto _L70; else goto _L69
_L69:
    }

    protected int parseData(byte abyte0[])
    {
        return waterCupDevice.parseSetDrinkPlanResponseData(abyte0);
    }

    public boolean readFirmwareFile()
    {
        mFirmwareBuffer = new byte[drinkPlanList.size() * 4];
        for (int i = 0; i < drinkPlanList.size(); i++)
        {
            DrinkWaterData drinkwaterdata = (DrinkWaterData)drinkPlanList.get(i);
            int k = drinkwaterdata.startTime;
            int l = drinkwaterdata.drinkWaterCount;
            byte abyte0[] = NumberToByteArray.intToBytes(k);
            byte abyte1[] = NumberToByteArray.intToBytes(l);
            mFirmwareBuffer[i * 4] = abyte0[2];
            mFirmwareBuffer[i * 4 + 1] = abyte0[3];
            mFirmwareBuffer[i * 4 + 2] = abyte1[2];
            mFirmwareBuffer[i * 4 + 3] = abyte1[3];
        }

        mUpgradeFileLenth = mFirmwareBuffer.length;
        int j;
        if (mUpgradeFileLenth % UPGRADE_DATA_PACKAGE_LENTH != 0)
        {
            j = mUpgradeFileLenth / UPGRADE_DATA_PACKAGE_LENTH + 1;
        } else
        {
            j = mUpgradeFileLenth / UPGRADE_DATA_PACKAGE_LENTH;
        }
        mTotalPackageNumber = j;
        mEndPackageLength = mUpgradeFileLenth % UPGRADE_DATA_PACKAGE_LENTH;
        Debug.logBle((new StringBuilder()).append("mTotalPackageNumber:").append(mTotalPackageNumber).toString());
        Debug.logBle((new StringBuilder()).append("mUpgradeFileLenth:").append(mUpgradeFileLenth).append("(0x").append(Integer.toHexString(mUpgradeFileLenth)).append(")").toString());
        return true;
    }

    public void sendCmdToBleDevice(byte abyte0[])
    {
        super.sendCmdToBleDevice(abyte0);
    }
}
