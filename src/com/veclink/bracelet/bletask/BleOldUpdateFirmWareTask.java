// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bledevice.BraceletOldDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleOldUpdateFirmWareTask extends BleTask
{

    public int FIRST_TRANSFER_PACKAGE_DATA_LENGTH;
    public int FIRST_TRANSFER_PACKAGE_DATA_OFFSET;
    public int TRANSFER_PACKAGE_DATA_LENGTH;
    public int TRANSFER_PACKAGE_DATA_OFFSET;
    private int UPGRADE_DATA_PACKAGE_LENTH;
    private String filePath;
    private int mEndDataLength;
    private int mEndPackageLength;
    private FileInputStream mFileIn;
    byte mFirmwareBuffer[];
    byte mPackageBuffer[];
    private byte mSendCmd[];
    private int mStartDataLength;
    private int mTotalDataNumber;
    private int mTotalPackageNumber;
    byte mTransferBuffer[];
    private int mUpgradeFileLenth;
    private BraceletOldDevice oldBraceletProfile;

    public BleOldUpdateFirmWareTask(Context context, BleCallBack blecallback, String s)
    {
        super(context, blecallback);
        mFileIn = null;
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
        filePath = s;
        oldBraceletProfile = (BraceletOldDevice)bleDeviceProfile;
    }

    public void clearUpgradeSendCmd()
    {
        mSendCmd = new byte[20];
        byte abyte0[] = mSendCmd;
        BraceletOldDevice braceletolddevice = oldBraceletProfile;
        abyte0[0] = 90;
        abyte0 = mSendCmd;
        braceletolddevice = oldBraceletProfile;
        abyte0[1] = 18;
    }

    public void doWork()
    {
        this;
        JVM INSTR monitorenter ;
        int i2;
        i2 = UPGRADE_DATA_PACKAGE_LENTH;
        if (readFirmwareFile(filePath))
        {
            break MISSING_BLOCK_LABEL_38;
        }
        Debug.logBle("readFirmwareFile fail");
        bleCallBack.sendOnFialedMessage(filePath);
        this;
        JVM INSTR monitorexit ;
        return;
        byte byte0;
        byte byte1;
        byte byte2;
        byte byte3;
        int i;
        i = oldBraceletProfile.crc_ccitt(mFirmwareBuffer, mUpgradeFileLenth);
        Debug.logBle((new StringBuilder()).append("fileCrc:0x").append(Integer.toHexString(i)).toString());
        byte0 = (byte)(mUpgradeFileLenth >> 24 & 0xff);
        byte1 = (byte)(mUpgradeFileLenth >> 16 & 0xff);
        byte2 = (byte)(mUpgradeFileLenth >> 8 & 0xff);
        byte3 = (byte)(mUpgradeFileLenth & 0xff);
        byte byte4;
        byte byte5;
        byte byte6;
        byte byte7;
        byte byte8;
        byte byte9;
        byte4 = (byte)(i >> 8 & 0xff);
        byte5 = (byte)(i & 0xff);
        byte6 = (byte)(i2 >> 8 & 0xff);
        byte7 = (byte)(i2 & 0xff);
        byte8 = (byte)8;
        byte9 = (byte)0;
        oldBraceletProfile.pareseCmdResponseType = 0x13881;
        mDeviceRespondOk = false;
        i = 0;
_L2:
        if (i >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
        if (mDeviceRespondOk)
        {
            break; /* Loop/switch isn't completed */
        }
        mSendCmd = oldBraceletProfile.createCmdArrayOfByte(new Object[] {
            Byte.valueOf((byte)17), new byte[] {
                byte0, byte1, byte2, byte3, byte4, byte5, byte6, byte7, byte8, byte9
            }
        });
        Debug.logBleByTag("updatecmd is ", Helper.bytesToHexString(mSendCmd));
        mDeviceRespondOk = false;
        sendCmdToBleDevice(mSendCmd);
        Debug.logBle("wait for device response  update cmd");
        waitResponse(2000);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (i < 3)
        {
            break MISSING_BLOCK_LABEL_379;
        }
        if (mDeviceRespondOk)
        {
            break MISSING_BLOCK_LABEL_379;
        }
        Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u5347\u7EA7\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        bleCallBack.sendOnFialedMessage(filePath);
        this;
        JVM INSTR monitorexit ;
        return;
        Object obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        if (false) goto _L4; else goto _L3
_L3:
        Debug.logBle("device response  update cmd can startUpgrade...");
        bleCallBack.sendOnStartMessage(filePath);
        int k = 0;
_L72:
        if (k >= mTotalPackageNumber) goto _L6; else goto _L5
_L5:
        int j;
        boolean flag;
        int j1;
        j1 = 1;
        j = 0;
        flag = false;
        byte0 = 1;
        clearUpgradeSendCmd();
        oldBraceletProfile.clearNextPackageRequest();
        oldBraceletProfile.pareseCmdResponseType = 0x13882;
        if (mTotalPackageNumber - k != 1) goto _L8; else goto _L7
_L7:
        flag = true;
        if (mEndPackageLength - 9 <= 0) goto _L10; else goto _L9
_L9:
        if ((mEndPackageLength - 9) % 17 == 0) goto _L12; else goto _L11
_L11:
        i = (mEndPackageLength - 9) / 17 + 2;
_L17:
        mTotalDataNumber = i;
        mStartDataLength = 9;
        mEndDataLength = (mEndPackageLength - 9) % 17;
          goto _L13
_L16:
        if (i >= mEndPackageLength) goto _L15; else goto _L14
_L14:
        mPackageBuffer[i] = mFirmwareBuffer[i2 * k + i];
        i++;
          goto _L16
_L12:
        i = (mEndPackageLength - 9) / 17 + 1;
          goto _L17
_L10:
        mTotalDataNumber = 1;
        mStartDataLength = mEndPackageLength;
        mEndDataLength = 0;
          goto _L13
_L15:
        int l;
        l = oldBraceletProfile.crc_ccitt(mPackageBuffer, mEndPackageLength);
        Debug.logBle((new StringBuilder()).append("last package fileCrc:0x").append(Integer.toHexString(l)).toString());
_L32:
        mDeviceRespondOk = false;
        int i1 = 0;
_L36:
        if (i1 >= mTotalDataNumber) goto _L19; else goto _L18
_L18:
        if (flag) goto _L21; else goto _L20
_L20:
        if (mTotalDataNumber - i1 != 1) goto _L21; else goto _L22
_L22:
        byte1 = -2;
        i = 1;
_L34:
        clearUpgradeSendCmd();
        mSendCmd[2] = byte1;
        if (j1 == 0) goto _L24; else goto _L23
_L23:
        mSendCmd[3] = (byte)(k >> 8 & 0xff);
        mSendCmd[4] = (byte)(k & 0xff);
        mSendCmd[5] = (byte)(l >> 8 & 0xff);
        mSendCmd[6] = (byte)(l & 0xff);
        j = 0;
_L26:
        if (j >= mStartDataLength)
        {
            break; /* Loop/switch isn't completed */
        }
        mSendCmd[j + 11] = mPackageBuffer[j];
        j++;
        if (true) goto _L26; else goto _L25
_L8:
        if ((UPGRADE_DATA_PACKAGE_LENTH - 9) % 17 == 0) goto _L28; else goto _L27
_L27:
        i = (UPGRADE_DATA_PACKAGE_LENTH - 9) / 17 + 2;
_L31:
        mTotalDataNumber = i;
        mStartDataLength = 9;
        mEndDataLength = (UPGRADE_DATA_PACKAGE_LENTH - 9) % 17;
        i = 0;
_L30:
        if (i >= UPGRADE_DATA_PACKAGE_LENTH)
        {
            break; /* Loop/switch isn't completed */
        }
        mPackageBuffer[i] = mFirmwareBuffer[i2 * k + i];
        i++;
        if (true) goto _L30; else goto _L29
_L28:
        i = (UPGRADE_DATA_PACKAGE_LENTH - 9) / 17 + 1;
          goto _L31
_L29:
        l = oldBraceletProfile.crc_ccitt(mPackageBuffer, UPGRADE_DATA_PACKAGE_LENTH);
          goto _L32
_L21:
        i = j;
        byte1 = byte0;
        if (!flag) goto _L34; else goto _L33
_L33:
        i = j;
        byte1 = byte0;
        if (mTotalDataNumber - i1 != 1) goto _L34; else goto _L35
_L35:
        byte1 = -1;
        Debug.logBle((new StringBuilder()).append("last pack last trans:").append(Integer.toHexString(-1).substring(6)).toString());
        i = 1;
          goto _L34
_L42:
        mDeviceRespondOk = false;
        sendCmdToBleDevice(mSendCmd);
        Thread.sleep(50L);
_L44:
        int k1;
        byte0 = (byte)(byte1 + 1);
        i1++;
        j1 = k1;
          goto _L36
_L24:
        if (i == 0) goto _L38; else goto _L37
_L37:
        i = 0;
_L40:
        if (i >= mEndDataLength)
        {
            break; /* Loop/switch isn't completed */
        }
        mSendCmd[i + 3] = mPackageBuffer[i + ((i1 - 1) * 17 + 9)];
        i++;
        if (true) goto _L40; else goto _L39
_L43:
        j = i;
        k1 = j1;
        int l1;
        if (l1 >= TRANSFER_PACKAGE_DATA_LENGTH) goto _L42; else goto _L41
_L41:
        mSendCmd[l1 + 3] = mPackageBuffer[l1 + ((i1 - 1) * 17 + 9)];
        l1++;
          goto _L43
        obj;
        ((InterruptedException) (obj)).printStackTrace();
          goto _L44
_L19:
        waitResponse(5000);
        if (!mDeviceRespondOk) goto _L46; else goto _L45
_L45:
        Debug.logBle("send data respond ok!!!");
_L63:
        if (!oldBraceletProfile.getReTransferDataFlag()) goto _L48; else goto _L47
_L47:
        i1 = oldBraceletProfile.getRetransData();
        BraceletOldDevice braceletolddevice = oldBraceletProfile;
        BraceletOldDevice braceletolddevice2 = oldBraceletProfile;
        braceletolddevice.pareseCmdResponseType = 0x13882;
        mDeviceRespondOk = false;
        Debug.logBle((new StringBuilder()).append("reSend data reTotalDataNumber:").append(i1).toString());
        Debug.logBle((new StringBuilder()).append("data num:").append(mTotalDataNumber).append("(").append(Integer.toHexString(mTotalDataNumber & 0xff | 0xffffff00).substring(6).toUpperCase()).append(")").toString());
        i = 0;
_L53:
        if (i >= i1) goto _L50; else goto _L49
_L49:
        j1 = oldBraceletProfile.mRetransData[i];
        clearUpgradeSendCmd();
        mSendCmd[2] = (byte)j1;
        if (j1 != -1) goto _L52; else goto _L51
_L51:
        Debug.logBle("cma---*****");
_L58:
        mDeviceRespondOk = false;
        sendCmdToBleDevice(mSendCmd);
        Thread.sleep(50L);
_L62:
        i++;
          goto _L53
_L46:
        Debug.logBle("send data respond timeout!");
        Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u5347\u7EA7\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        bleCallBack.sendOnFialedMessage(filePath);
        this;
        JVM INSTR monitorexit ;
        return;
_L52:
        if (j1 != mTotalDataNumber) goto _L55; else goto _L54
_L54:
        Debug.logBle((new StringBuilder()).append("").append(j1).append("(").append(Integer.toHexString(j1 & 0xff | 0xffffff00).substring(6)).append(")").toString());
        mSendCmd[2] = -2;
        j = mTotalDataNumber;
        i = 0;
_L56:
        if (i >= mEndDataLength)
        {
            break; /* Loop/switch isn't completed */
        }
        mSendCmd[i + 3] = mPackageBuffer[i + ((j - 2) * 17 + 9)];
        i++;
        if (true) goto _L56; else goto _L50
_L55:
        if (j1 != 1)
        {
            break MISSING_BLOCK_LABEL_2087;
        }
        Debug.logBle((new StringBuilder()).append("").append(j1).append("(").append(Integer.toHexString(j1 & 0xff | 0xffffff00).substring(6)).append(")").toString());
        mSendCmd[3] = (byte)(k >> 8 & 0xff);
        mSendCmd[4] = (byte)(k & 0xff);
        mSendCmd[5] = (byte)(l >> 8 & 0xff);
        mSendCmd[6] = (byte)(l & 0xff);
        j = 0;
_L59:
        if (j >= mStartDataLength) goto _L58; else goto _L57
_L57:
        mSendCmd[j + 11] = mPackageBuffer[j];
        j++;
          goto _L59
_L61:
        if (j >= TRANSFER_PACKAGE_DATA_LENGTH) goto _L58; else goto _L60
_L60:
        mSendCmd[j + 3] = mPackageBuffer[j + ((j1 - 2) * 17 + 9)];
        j++;
          goto _L61
        braceletolddevice;
        braceletolddevice.printStackTrace();
          goto _L62
_L50:
        Thread.sleep(500L);
_L64:
        if (!mDeviceRespondOk)
        {
            break MISSING_BLOCK_LABEL_1756;
        }
        Debug.logBle("retransfer respond ok!!!");
          goto _L63
        braceletolddevice;
        braceletolddevice.printStackTrace();
          goto _L64
        Debug.logBle("retransfer respond timeout!");
        this;
        JVM INSTR monitorexit ;
        return;
_L48:
        mDeviceRespondOk = false;
        BraceletOldDevice braceletolddevice1 = oldBraceletProfile;
        BraceletOldDevice braceletolddevice3 = oldBraceletProfile;
        braceletolddevice1.pareseCmdResponseType = 0x13883;
        clearUpgradeSendCmd();
        braceletolddevice1 = oldBraceletProfile;
        braceletolddevice1 = oldBraceletProfile;
        braceletolddevice1 = oldBraceletProfile;
        byte0 = (byte)(k >> 8 & 0xff);
        byte1 = (byte)(k & 0xff);
        i = (int)(((float)k / (float)mTotalPackageNumber) * 100F);
        Debug.logBle((new StringBuilder()).append("send packagert and persent is:").append(i).toString());
        bleCallBack.sendOnProgressMessage(Integer.valueOf(i));
        sendCmdToBleDevice(new byte[] {
            90, 18, 0, byte0, byte1
        });
        waitResponse(2000);
        if (!mDeviceRespondOk) goto _L66; else goto _L65
_L65:
        Debug.logBle("next package---respond ok!!!");
_L70:
        if (!oldBraceletProfile.getAllPackageReceivOver()) goto _L68; else goto _L67
_L67:
        Debug.logBle("getAllPackageReceivOver ok!");
        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
_L6:
        Debug.logBle("upgrade ok!");
        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
        mDeviceRespondOk = false;
        waitResponse(500);
        bleCallBack.sendOnFinishMessage(filePath);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L66:
        if (flag) goto _L70; else goto _L69
_L69:
        Debug.logBle("next package---respond error!");
          goto _L70
_L68:
label0:
        {
            if (oldBraceletProfile.getNextPackageRequest())
            {
                break label0;
            }
            Debug.logBle("getNextPackageRequest is false");
            bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
        }
        if (true) goto _L6; else goto _L71
_L71:
        k++;
          goto _L72
_L13:
        i = 0;
          goto _L16
_L25:
        k1 = 0;
        j = i;
          goto _L42
_L39:
        j = 0;
        k1 = j1;
          goto _L42
_L38:
        l1 = 0;
          goto _L43
        j = 0;
          goto _L61
    }

    protected int parseData(byte abyte0[])
    {
        return oldBraceletProfile.parseUpdateResponseData(abyte0);
    }

    public boolean readFirmwareFile(String s)
    {
        File file;
        int i;
        i = 0;
        file = new File(s);
        if (file.exists() && file.isFile()) goto _L2; else goto _L1
_L1:
        Debug.logBle((new StringBuilder()).append("Error:this file not exist(").append(s).append(")").toString());
_L4:
        return false;
_L2:
        int j;
        try
        {
            mFileIn = new FileInputStream(file);
            mUpgradeFileLenth = mFileIn.available();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        if (mUpgradeFileLenth > 0)
        {
            mFirmwareBuffer = new byte[mUpgradeFileLenth];
        }
        j = mFileIn.read(mFirmwareBuffer, 0, mUpgradeFileLenth);
        i = j;
        if (i == -1) goto _L4; else goto _L3
_L3:
        try
        {
            mFileIn.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        if (i != mUpgradeFileLenth)
        {
            Debug.logBle((new StringBuilder()).append("Error----len:").append(i).toString());
        }
        if (mUpgradeFileLenth % UPGRADE_DATA_PACKAGE_LENTH != 0)
        {
            i = mUpgradeFileLenth / UPGRADE_DATA_PACKAGE_LENTH + 1;
        } else
        {
            i = mUpgradeFileLenth / UPGRADE_DATA_PACKAGE_LENTH;
        }
        mTotalPackageNumber = i;
        mEndPackageLength = mUpgradeFileLenth % UPGRADE_DATA_PACKAGE_LENTH;
        Debug.logBle((new StringBuilder()).append("mTotalPackageNumber:").append(mTotalPackageNumber).toString());
        Debug.logBle((new StringBuilder()).append("mUpgradeFileLenth:").append(mUpgradeFileLenth).append("(0x").append(Integer.toHexString(mUpgradeFileLenth)).append(")").toString());
        return true;
        s;
        s.printStackTrace();
          goto _L3
    }
}
