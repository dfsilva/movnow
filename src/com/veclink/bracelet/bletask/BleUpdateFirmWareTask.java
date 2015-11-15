// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleUpdateFirmWareTask extends BleTask
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
    private int progress;

    public BleUpdateFirmWareTask(Context context, BleCallBack blecallback, String s)
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
        Debug.logBle("BleUpdateFirmWareTask veclink update way");
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
        i = bleDeviceProfile.crc_ccitt(mFirmwareBuffer, mUpgradeFileLenth);
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
        byte8 = (byte)20;
        byte9 = (byte)5;
        bleDeviceProfile.pareseCmdResponseType = 0x13881;
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
        BaseBleDevice basebledevice = bleDeviceProfile;
        BaseBleDevice basebledevice3 = bleDeviceProfile;
        mSendCmd = basebledevice.createCmdArrayOfByte(new Object[] {
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
            break MISSING_BLOCK_LABEL_389;
        }
        if (mDeviceRespondOk)
        {
            break MISSING_BLOCK_LABEL_389;
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
        if (bleDeviceProfile.mUpgradeState == 0) goto _L4; else goto _L3
_L3:
        if (false) goto _L6; else goto _L5
_L5:
        Debug.logBle("device response  update cmd can startUpgrade...");
        bleCallBack.sendOnStartMessage(filePath);
        if (mTotalPackageNumber <= 1);
          goto _L7
_L73:
        int k;
        if (k >= mTotalPackageNumber) goto _L9; else goto _L8
_L8:
        progress = (int)(((float)k / (float)mTotalPackageNumber) * 100F);
        bleCallBack.sendOnProgressMessage(Integer.valueOf(progress));
        bleCallBack.sendOnProgressMessage(Integer.valueOf(progress));
        int j;
        boolean flag;
        int j1;
        int j2;
        j1 = 1;
        j = 0;
        flag = false;
        byte0 = 1;
        j2 = k + 1;
        Debug.logBle((new StringBuilder()).append("send packageSequenceNumber is:").append(j2).toString());
        clearUpgradeSendCmd();
        bleDeviceProfile.clearNextPackageRequest();
        bleDeviceProfile.pareseCmdResponseType = 0x13882;
        if (mTotalPackageNumber - k != 1) goto _L11; else goto _L10
_L10:
        flag = true;
        if (mEndPackageLength % 17 == 0) goto _L13; else goto _L12
_L12:
        i = mEndPackageLength / 17 + 2;
_L16:
        mTotalDataNumber = i;
        mStartDataLength = 0;
        mEndDataLength = mEndPackageLength % 17;
        i = 0;
_L15:
        if (i >= mEndPackageLength)
        {
            break; /* Loop/switch isn't completed */
        }
        mPackageBuffer[i] = mFirmwareBuffer[i2 * k + i];
        i++;
        if (true) goto _L15; else goto _L14
_L4:
        bleCallBack.sendOnFialedMessage(filePath);
        this;
        JVM INSTR monitorexit ;
        return;
_L13:
        i = mEndPackageLength / 17 + 1;
          goto _L16
_L14:
        int l;
        l = bleDeviceProfile.crc_ccitt(mPackageBuffer, mEndPackageLength);
        Debug.logBle((new StringBuilder()).append("last package fileCrc:0x").append(Integer.toHexString(l)).toString());
_L32:
        mDeviceRespondOk = false;
        i = mEndDataLength;
        i = mStartDataLength;
        int i1 = 0;
_L26:
        if (i1 >= mTotalDataNumber) goto _L18; else goto _L17
_L17:
        if (flag) goto _L20; else goto _L19
_L19:
        if (mTotalDataNumber - i1 != 1) goto _L20; else goto _L21
_L21:
        byte1 = -2;
        i = 1;
        Debug.logBle((new StringBuilder()).append("last trans:").append(Integer.toHexString(-2).substring(6)).toString());
_L34:
        clearUpgradeSendCmd();
        mSendCmd[2] = byte1;
        if (j1 == 0) goto _L23; else goto _L22
_L22:
        Debug.logBle((new StringBuilder()).append(" isStartDataNumber start package:").append(j2).toString());
        if (!flag) goto _L25; else goto _L24
_L24:
        mSendCmd[3] = (byte)(mEndPackageLength >> 8 & 0xff);
        mSendCmd[4] = (byte)(mEndPackageLength & 0xff);
_L36:
        byte abyte0[];
        mSendCmd[5] = (byte)(j2 >> 8 & 0xff);
        mSendCmd[6] = (byte)(j2 & 0xff);
        mSendCmd[7] = (byte)(l >> 8 & 0xff);
        mSendCmd[8] = (byte)(l & 0xff);
        abyte0 = mSendCmd;
        BaseBleDevice basebledevice4 = bleDeviceProfile;
        int k1;
        abyte0[9] = 17;
        k1 = 0;
        j = i;
_L41:
        mDeviceRespondOk = false;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_997;
        }
        Debug.logBle((new StringBuilder()).append("last longpackage lastsmallpack content is ").append(Helper.bytesToHexString(mSendCmd)).toString());
        sendCmdToBleDevice(mSendCmd);
        Thread.sleep(50L);
_L43:
        byte0 = (byte)(byte1 + 1);
        i1++;
        j1 = k1;
          goto _L26
_L11:
        if (UPGRADE_DATA_PACKAGE_LENTH % 17 == 0) goto _L28; else goto _L27
_L27:
        i = UPGRADE_DATA_PACKAGE_LENTH / 17 + 2;
_L31:
        mTotalDataNumber = i;
        mStartDataLength = 0;
        mEndDataLength = UPGRADE_DATA_PACKAGE_LENTH % 17;
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
        i = UPGRADE_DATA_PACKAGE_LENTH / 17 + 1;
          goto _L31
_L29:
        l = bleDeviceProfile.crc_ccitt(mPackageBuffer, UPGRADE_DATA_PACKAGE_LENTH);
          goto _L32
_L20:
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
_L25:
        mSendCmd[3] = (byte)(UPGRADE_DATA_PACKAGE_LENTH >> 8 & 0xff);
        mSendCmd[4] = (byte)(UPGRADE_DATA_PACKAGE_LENTH & 0xff);
          goto _L36
_L39:
        if (i >= mEndDataLength) goto _L38; else goto _L37
_L37:
        mSendCmd[i + 3] = mPackageBuffer[i + (i1 - 1) * 17];
        i++;
          goto _L39
_L42:
        j = i;
        k1 = j1;
        int l1;
        if (l1 >= TRANSFER_PACKAGE_DATA_LENGTH) goto _L41; else goto _L40
_L40:
        mSendCmd[l1 + 3] = mPackageBuffer[l1 + (i1 - 1) * 17];
        l1++;
          goto _L42
        abyte0;
        abyte0.printStackTrace();
          goto _L43
_L18:
        waitResponse(5000);
        if (!mDeviceRespondOk) goto _L45; else goto _L44
_L44:
        Debug.logBle("send data respond ok!!!");
_L63:
        if (!bleDeviceProfile.getReTransferDataFlag()) goto _L47; else goto _L46
_L46:
        i1 = bleDeviceProfile.getRetransData();
        BaseBleDevice basebledevice1 = bleDeviceProfile;
        BaseBleDevice basebledevice5 = bleDeviceProfile;
        basebledevice1.pareseCmdResponseType = 0x13882;
        mDeviceRespondOk = false;
        Debug.logBle((new StringBuilder()).append("needreSend data reTotalDataNumber is:").append(i1).toString());
        Debug.logBle((new StringBuilder()).append("data num:").append(mTotalDataNumber).append("(").append(Integer.toHexString(mTotalDataNumber & 0xff | 0xffffff00).substring(6).toUpperCase()).append(")").toString());
        i = 0;
_L52:
        if (i >= i1) goto _L49; else goto _L48
_L48:
        j1 = bleDeviceProfile.mRetransData[i];
        Debug.logBle((new StringBuilder()).append(" renum is ").append(j1).append("(").append(Integer.toHexString(j1 & 0xff | 0xffffff00).substring(6)).append(")").toString());
        clearUpgradeSendCmd();
        mSendCmd[2] = (byte)j1;
        if (j1 != -1) goto _L51; else goto _L50
_L50:
        Debug.logBle("cma---*****");
_L56:
        mDeviceRespondOk = false;
        Debug.logBle((new StringBuilder()).append("do resend data conteent is ").append(Helper.bytesToHexString(mSendCmd)).toString());
        sendCmdToBleDevice(mSendCmd);
        i++;
          goto _L52
_L45:
        Debug.logBle("send data respond timeout!");
        Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u5347\u7EA7\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        bleCallBack.sendOnFialedMessage(filePath);
_L9:
        if (!bleDeviceProfile.getAllPackageReceivOver()) goto _L54; else goto _L53
_L53:
        Debug.logBle("upgrade ok!");
        bleCallBack.sendOnFinishMessage(filePath);
_L6:
        this;
        JVM INSTR monitorexit ;
        return;
_L51:
        if (j1 != mTotalDataNumber)
        {
            break MISSING_BLOCK_LABEL_1768;
        }
        Debug.logBle("do resend data!");
        mSendCmd[2] = -2;
        j = 0;
_L57:
        if (j >= mEndDataLength) goto _L56; else goto _L55
_L55:
        mSendCmd[j + 3] = mPackageBuffer[j + (j1 - 2) * 17];
        j++;
          goto _L57
        if (j1 != 1) goto _L59; else goto _L58
_L58:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_1895;
        }
        mSendCmd[3] = (byte)(mEndPackageLength >> 8 & 0xff);
        mSendCmd[4] = (byte)(mEndPackageLength & 0xff);
_L60:
        mSendCmd[5] = (byte)(j2 >> 8 & 0xff);
        mSendCmd[6] = (byte)(j2 & 0xff);
        mSendCmd[7] = (byte)(l >> 8 & 0xff);
        mSendCmd[8] = (byte)(l & 0xff);
        basebledevice1 = mSendCmd;
        BaseBleDevice basebledevice6 = bleDeviceProfile;
        basebledevice1[9] = 17;
          goto _L56
        mSendCmd[3] = (byte)(UPGRADE_DATA_PACKAGE_LENTH >> 8 & 0xff);
        mSendCmd[4] = (byte)(UPGRADE_DATA_PACKAGE_LENTH & 0xff);
          goto _L60
_L62:
        if (j >= TRANSFER_PACKAGE_DATA_LENGTH) goto _L56; else goto _L61
_L61:
        mSendCmd[j + 3] = mPackageBuffer[j + (j1 - 2) * 17];
        j++;
          goto _L62
_L49:
label0:
        {
            waitResponse(5000);
            if (!mDeviceRespondOk)
            {
                break label0;
            }
            Debug.logBle("retransfer respond ok!!!");
        }
          goto _L63
        Debug.logBle("retransfer respond timeout!");
        bleCallBack.sendOnFialedMessage(filePath);
        this;
        JVM INSTR monitorexit ;
        return;
_L47:
        mDeviceRespondOk = false;
        BaseBleDevice basebledevice2 = bleDeviceProfile;
        BaseBleDevice basebledevice7 = bleDeviceProfile;
        basebledevice2.pareseCmdResponseType = 0x13883;
        clearUpgradeSendCmd();
        basebledevice2 = bleDeviceProfile;
        basebledevice2 = bleDeviceProfile;
        basebledevice2 = bleDeviceProfile;
        sendCmdToBleDevice(new byte[] {
            90, 5, 0, (byte)(j2 >> 8 & 0xff), (byte)(j2 & 0xff)
        });
        waitResponse(5000);
        if (!mDeviceRespondOk) goto _L65; else goto _L64
_L64:
        Debug.logBle("next package---respond ok!!!");
_L67:
        if (!bleDeviceProfile.getAllPackageReceivOver())
        {
            break MISSING_BLOCK_LABEL_2179;
        }
        Debug.logBle("getAllPackageReceivOver ok!");
        progress = 100;
        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
          goto _L9
_L65:
        if (flag) goto _L67; else goto _L66
_L66:
        Debug.logBle("next package---respond error!");
          goto _L67
        if (bleDeviceProfile.getNextPackageRequest()) goto _L69; else goto _L68
_L68:
        Debug.logBle("getNextPackageRequest is false");
        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
          goto _L9
_L54:
        bleCallBack.sendOnFialedMessage(filePath);
          goto _L6
_L7:
        k = 0;
        continue; /* Loop/switch isn't completed */
_L23:
        if (i == 0) goto _L71; else goto _L70
_L70:
        i = 0;
          goto _L39
_L38:
        j = 0;
        k1 = j1;
          goto _L41
_L71:
        l1 = 0;
          goto _L42
_L59:
        j = 0;
          goto _L62
_L69:
        k++;
        if (true) goto _L73; else goto _L72
_L72:
    }

    protected int parseData(byte abyte0[])
    {
        return bleDeviceProfile.parseUpdateResponseData(abyte0);
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

    public void sendCmdToBleDevice(byte abyte0[])
    {
        super.sendCmdToBleDevice(abyte0);
    }
}
