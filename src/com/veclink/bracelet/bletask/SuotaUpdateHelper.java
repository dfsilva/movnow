// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.os.Handler;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import com.veclink.hw.bleservice.OnBleServiceStatusListener;
import com.veclink.hw.bleservice.VLBleService;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleCallBack, BleSuotaUpdateTask

public class SuotaUpdateHelper
    implements OnBleServiceStatusListener
{

    public static final String EXTRAS_DEVICE_ADDRESS = "DEVICE_ADDRESS";
    public static final String EXTRAS_DEVICE_NAME = "DEVICE_NAME";
    public static final UUID SPOTA_SERV_STATUS_UUID = UUID.fromString("5f78df94-798c-46f5-990a-b3eb6a065c88");
    public static final String TAG = com/veclink/bracelet/bletask/SuotaUpdateHelper.getSimpleName();
    public final int FILE_SELECT_CODE = 2000;
    public final int I2C_TYPE = 0;
    public final int SPI_TYPE = 1;
    public final byte SPOTAR_APP_ERROR = 9;
    public final byte SPOTAR_CMP_OK = 2;
    public final byte SPOTAR_CRC_ERR = 4;
    public final byte SPOTAR_EXT_MEM_READ_ERR = 22;
    public final byte SPOTAR_EXT_MEM_WRITE_ERR = 6;
    public final byte SPOTAR_IMG_STARTED = 16;
    public final byte SPOTAR_INT_MEM_ERR = 7;
    public final byte SPOTAR_INVAL_IMG_BANK = 17;
    public final byte SPOTAR_INVAL_IMG_HDR = 18;
    public final byte SPOTAR_INVAL_IMG_SIZE = 19;
    public final byte SPOTAR_INVAL_MEM_TYPE = 8;
    public final byte SPOTAR_INVAL_PRODUCT_HDR = 20;
    public final byte SPOTAR_PATCH_LEN_ERR = 5;
    public final byte SPOTAR_SAME_IMG_ERR = 21;
    public final byte SPOTAR_SRV_EXIT = 3;
    public final byte SPOTAR_SRV_STARTED = 1;
    public final UUID SPOTA_GPIO_MAP_UUID = UUID.fromString("724249f0-5ec3-4b5f-8804-42345af08651");
    public final UUID SPOTA_MEM_DEV_UUID = UUID.fromString("8082caa8-41a6-4021-91c6-56f9b954cc34");
    public final UUID SPOTA_MEM_INFO_UUID = UUID.fromString("6c53db25-47a1-45fe-a022-7c92fb334fd4");
    public final UUID SPOTA_PATCH_DATA_UUID = UUID.fromString("457871e8-d516-4ca1-9116-57d0b17b9cb2");
    public final UUID SPOTA_PATCH_LEN_UUID = UUID.fromString("9d84b9a3-000c-49d8-9183-855b673fda31");
    public final UUID SPOTA_SERVICE_UUID = UUID.fromString("0000fef5-0000-1000-8000-00805f9b34fb");
    public final int SPOTA_WRITE_GPIO_MAP = 1;
    public final int SPOTA_WRITE_MEM_DEV = 0;
    public final int SPOTA_WRITE_PATH_DATA = 3;
    public final int SPOTA_WRITE_PATH_LEN = 2;
    public final int SPOTA_WRITE_SUCESS = 4;
    public BleCallBack bleCallBack;
    int crc32_tab[] = {
        0, 0x77073096, 0xee0e612c, 0x990951ba, 0x76dc419, 0x706af48f, 0xe963a535, 0x9e6495a3, 0xedb8832, 0x79dcb8a4, 
        0xe0d5e91e, 0x97d2d988, 0x9b64c2b, 0x7eb17cbd, 0xe7b82d07, 0x90bf1d91, 0x1db71064, 0x6ab020f2, 0xf3b97148, 0x84be41de, 
        0x1adad47d, 0x6ddde4eb, 0xf4d4b551, 0x83d385c7, 0x136c9856, 0x646ba8c0, 0xfd62f97a, 0x8a65c9ec, 0x14015c4f, 0x63066cd9, 
        0xfa0f3d63, 0x8d080df5, 0x3b6e20c8, 0x4c69105e, 0xd56041e4, 0xa2677172, 0x3c03e4d1, 0x4b04d447, 0xd20d85fd, 0xa50ab56b, 
        0x35b5a8fa, 0x42b2986c, 0xdbbbc9d6, 0xacbcf940, 0x32d86ce3, 0x45df5c75, 0xdcd60dcf, 0xabd13d59, 0x26d930ac, 0x51de003a, 
        0xc8d75180, 0xbfd06116, 0x21b4f4b5, 0x56b3c423, 0xcfba9599, 0xb8bda50f, 0x2802b89e, 0x5f058808, 0xc60cd9b2, 0xb10be924, 
        0x2f6f7c87, 0x58684c11, 0xc1611dab, 0xb6662d3d, 0x76dc4190, 0x1db7106, 0x98d220bc, 0xefd5102a, 0x71b18589, 0x6b6b51f, 
        0x9fbfe4a5, 0xe8b8d433, 0x7807c9a2, 0xf00f934, 0x9609a88e, 0xe10e9818, 0x7f6a0dbb, 0x86d3d2d, 0x91646c97, 0xe6635c01, 
        0x6b6b51f4, 0x1c6c6162, 0x856530d8, 0xf262004e, 0x6c0695ed, 0x1b01a57b, 0x8208f4c1, 0xf50fc457, 0x65b0d9c6, 0x12b7e950, 
        0x8bbeb8ea, 0xfcb9887c, 0x62dd1ddf, 0x15da2d49, 0x8cd37cf3, 0xfbd44c65, 0x4db26158, 0x3ab551ce, 0xa3bc0074, 0xd4bb30e2, 
        0x4adfa541, 0x3dd895d7, 0xa4d1c46d, 0xd3d6f4fb, 0x4369e96a, 0x346ed9fc, 0xad678846, 0xda60b8d0, 0x44042d73, 0x33031de5, 
        0xaa0a4c5f, 0xdd0d7cc9, 0x5005713c, 0x270241aa, 0xbe0b1010, 0xc90c2086, 0x5768b525, 0x206f85b3, 0xb966d409, 0xce61e49f, 
        0x5edef90e, 0x29d9c998, 0xb0d09822, 0xc7d7a8b4, 0x59b33d17, 0x2eb40d81, 0xb7bd5c3b, 0xc0ba6cad, 0xedb88320, 0x9abfb3b6, 
        0x3b6e20c, 0x74b1d29a, 0xead54739, 0x9dd277af, 0x4db2615, 0x73dc1683, 0xe3630b12, 0x94643b84, 0xd6d6a3e, 0x7a6a5aa8, 
        0xe40ecf0b, 0x9309ff9d, 0xa00ae27, 0x7d079eb1, 0xf00f9344, 0x8708a3d2, 0x1e01f268, 0x6906c2fe, 0xf762575d, 0x806567cb, 
        0x196c3671, 0x6e6b06e7, 0xfed41b76, 0x89d32be0, 0x10da7a5a, 0x67dd4acc, 0xf9b9df6f, 0x8ebeeff9, 0x17b7be43, 0x60b08ed5, 
        0xd6d6a3e8, 0xa1d1937e, 0x38d8c2c4, 0x4fdff252, 0xd1bb67f1, 0xa6bc5767, 0x3fb506dd, 0x48b2364b, 0xd80d2bda, 0xaf0a1b4c, 
        0x36034af6, 0x41047a60, 0xdf60efc3, 0xa867df55, 0x316e8eef, 0x4669be79, 0xcb61b38c, 0xbc66831a, 0x256fd2a0, 0x5268e236, 
        0xcc0c7795, 0xbb0b4703, 0x220216b9, 0x5505262f, 0xc5ba3bbe, 0xb2bd0b28, 0x2bb45a92, 0x5cb36a04, 0xc2d7ffa7, 0xb5d0cf31, 
        0x2cd99e8b, 0x5bdeae1d, 0x9b64c2b0, 0xec63f226, 0x756aa39c, 0x26d930a, 0x9c0906a9, 0xeb0e363f, 0x72076785, 0x5005713, 
        0x95bf4a82, 0xe2b87a14, 0x7bb12bae, 0xcb61b38, 0x92d28e9b, 0xe5d5be0d, 0x7cdcefb7, 0xbdbdf21, 0x86d3d2d4, 0xf1d4e242, 
        0x68ddb3f8, 0x1fda836e, 0x81be16cd, 0xf6b9265b, 0x6fb077e1, 0x18b74777, 0x88085ae6, 0xff0f6a70, 0x66063bca, 0x11010b5c, 
        0x8f659eff, 0xf862ae69, 0x616bffd3, 0x166ccf45, 0xa00ae278, 0xd70dd2ee, 0x4e048354, 0x3903b3c2, 0xa7672661, 0xd06016f7, 
        0x4969474d, 0x3e6e77db, 0xaed16a4a, 0xd9d65adc, 0x40df0b66, 0x37d83bf0, 0xa9bcae53, 0xdebb9ec5, 0x47b2cf7f, 0x30b5ffe9, 
        0xbdbdf21c, 0xcabac28a, 0x53b39330, 0x24b4a3a6, 0xbad03605, 0xcdd70693, 0x54de5729, 0x23d967bf, 0xb3667a2e, 0xc4614ab8, 
        0x5d681b02, 0x2a6f2b94, 0xb40bbe37, 0xc30c8ea1, 0x5a05df1b, 0x2d02ef8d
    };
    private int fileLength;
    public boolean isUpdateing;
    public int mAddress;
    public int mBlockLength;
    public int mBlockOffset;
    public int mBlockSize;
    public VLBleService mBluetoothLeService;
    public Button mBrowser;
    public int mChunckLength;
    public int mChunckOffset;
    public int mChunckSize;
    public boolean mConnected;
    public String mDeviceAddress;
    public String mDeviceName;
    public TextView mDisplayImagePath;
    public TextView mDisplayLog;
    public Button mDownloadButton;
    public ArrayList mGattCharacteristics;
    public int mI2cSclGpio;
    public int mI2cSdaGpio;
    public int mImageDataLength;
    public boolean mIsLastChunk;
    public boolean mIsWriteLastLen;
    public int mMemoryType;
    public ArrayList mPatchData;
    public int mSpiClkGpio;
    public int mSpiCsGpio;
    public int mSpiMisoGpio;
    public int mSpiMosiGpio;
    public int mSpotaWriteStatus;
    public boolean readDataIsOver;

    public SuotaUpdateHelper(VLBleService vlbleservice, String s, BleCallBack blecallback, String s1)
    {
        mGattCharacteristics = new ArrayList();
        mConnected = false;
        mI2cSclGpio = 2;
        mI2cSdaGpio = 3;
        mAddress = 80;
        mSpiCsGpio = 3;
        mSpiClkGpio = 0;
        mSpiMosiGpio = 6;
        mSpiMisoGpio = 5;
        mMemoryType = 1;
        mSpotaWriteStatus = -1;
        readDataIsOver = false;
        mBlockSize = 240;
        mBlockLength = 0;
        mBlockOffset = 0;
        mImageDataLength = 0;
        mChunckSize = 20;
        mChunckLength = 0;
        mChunckOffset = 0;
        mIsLastChunk = false;
        mIsWriteLastLen = false;
        mBluetoothLeService = vlbleservice;
        bleCallBack = blecallback;
        mDeviceAddress = s1;
    }

    private void checkSum(ArrayList arraylist)
    {
        ArrayList arraylist1 = handlerBTaddress();
        byte abyte0[] = new byte[4];
        byte[] _tmp = abyte0;
        abyte0[0] = -1;
        abyte0[1] = -1;
        abyte0[2] = -1;
        abyte0[3] = -1;
        for (int i = 0; i < arraylist.size(); i++)
        {
            if (i > 1047 && i < 1054)
            {
                arraylist.set(i, Integer.valueOf(((Integer)arraylist1.get(6 - (i - 1047))).intValue()));
            }
            int k = ((Integer)arraylist.get(i)).intValue();
            if (i > 63)
            {
                byte abyte1[] = new byte[4];
                abyte1[0] = (byte)(crc32_tab[(byte)(abyte0[0] ^ (byte)k) & 0xff] >> 0 & 0xff);
                abyte1[1] = (byte)(crc32_tab[(byte)(abyte0[0] ^ (byte)k) & 0xff] >> 8 & 0xff);
                abyte1[2] = (byte)(crc32_tab[(byte)(abyte0[0] ^ (byte)k) & 0xff] >> 16 & 0xff);
                abyte1[3] = (byte)(crc32_tab[(byte)(abyte0[0] ^ (byte)k) & 0xff] >> 24 & 0xff);
                abyte0[0] = (byte)(abyte0[1] & 0xff);
                abyte0[1] = (byte)(abyte0[2] & 0xff);
                abyte0[2] = (byte)(abyte0[3] & 0xff);
                abyte0[3] = 0;
                abyte0[0] = (byte)(abyte0[0] & 0xff ^ abyte1[0] & 0xff & 0xff);
                abyte0[1] = (byte)(abyte0[1] & 0xff ^ abyte1[1] & 0xff & 0xff);
                abyte0[2] = (byte)(abyte0[2] & 0xff ^ abyte1[2] & 0xff & 0xff);
                abyte0[3] = (byte)(abyte0[3] & 0xff ^ abyte1[3] & 0xff & 0xff);
            }
        }

        Log.i("name_pcm_pcm", (new StringBuilder()).append("crc_code=0x").append(Integer.toHexString(0)).toString());
        abyte0[0] = (byte)((byte)(abyte0[0] ^ 0xff) & 0xff);
        abyte0[1] = (byte)((byte)(abyte0[1] ^ 0xff) & 0xff);
        abyte0[2] = (byte)((byte)(abyte0[2] ^ 0xff) & 0xff);
        abyte0[3] = (byte)((byte)(abyte0[3] ^ 0xff) & 0xff);
        Log.i("name_pcm_pcm", (new StringBuilder()).append("crc_32bit[0]=0x").append(Integer.toHexString(abyte0[0])).toString());
        Log.i("name_pcm_pcm", (new StringBuilder()).append("crc_32bit[1]=0x").append(Integer.toHexString(abyte0[1])).toString());
        Log.i("name_pcm_pcm", (new StringBuilder()).append("crc_32bit[2]=0x").append(Integer.toHexString(abyte0[2])).toString());
        Log.i("name_pcm_pcm", (new StringBuilder()).append("crc_32bit[3]=0x").append(Integer.toHexString(abyte0[3])).toString());
        for (int j = 0; j < 4; j++)
        {
            arraylist.set(j + 8, Integer.valueOf(abyte0[j] & 0xff));
        }

        byte byte0 = 0;
        for (int l = 0; l < arraylist.size(); l++)
        {
            byte0 = (byte)((byte)((Integer)arraylist.get(l)).intValue() ^ byte0);
        }

        int i1 = byte0 & 0xff;
        Log.i("pcm_crc_code", (new StringBuilder()).append("crc_code=").append(byte0).toString());
        Log.i("pcm_crc_code", (new StringBuilder()).append("crc_code=0x").append(i1).toString());
        arraylist.add(Integer.valueOf(i1));
    }

    public ArrayList handlerBTaddress()
    {
        String s = (new StringBuilder()).append(mDeviceAddress).append(":").toString();
        ArrayList arraylist = new ArrayList();
        do
        {
            while (s.indexOf(":") != -1) 
            {
                String s1 = s.substring(s.indexOf(":") - 2, s.indexOf(":"));
                s = s.substring(s.indexOf(":") + 1);
                int i;
                if (s1.indexOf("a") != -1 || s1.indexOf("b") != -1 || s1.indexOf("c") != -1 || s1.indexOf("d") != -1 || s1.indexOf("e") != -1 || s1.indexOf("f") != -1 || s1.indexOf("A") != -1 || s1.indexOf("B") != -1 || s1.indexOf("C") != -1 || s1.indexOf("D") != -1 || s1.indexOf("E") != -1 || s1.indexOf("F") != -1)
                {
                    if (s1.substring(0, 1).equals("a") || s1.substring(0, 1).equals("A"))
                    {
                        i = 160;
                    } else
                    if (s1.substring(0, 1).equals("b") || s1.substring(0, 1).equals("B"))
                    {
                        i = 176;
                    } else
                    if (s1.substring(0, 1).equals("c") || s1.substring(0, 1).equals("C"))
                    {
                        i = 192;
                    } else
                    if (s1.substring(0, 1).equals("d") || s1.substring(0, 1).equals("D"))
                    {
                        i = 208;
                    } else
                    if (s1.substring(0, 1).equals("e") || s1.substring(0, 1).equals("E"))
                    {
                        i = 224;
                    } else
                    if (s1.substring(0, 1).equals("f") || s1.substring(0, 1).equals("F"))
                    {
                        i = 240;
                    } else
                    {
                        i = Integer.parseInt(s1.substring(0, 1)) << 4;
                    }
                    if (s1.substring(1, 2).equals("a") || s1.substring(1, 2).equals("A"))
                    {
                        i |= 0xa;
                    } else
                    if (s1.substring(1, 2).equals("b") || s1.substring(1, 2).equals("B"))
                    {
                        i |= 0xb;
                    } else
                    if (s1.substring(1, 2).equals("c") || s1.substring(1, 2).equals("C"))
                    {
                        i |= 0xc;
                    } else
                    if (s1.substring(1, 2).equals("d") || s1.substring(1, 2).equals("D"))
                    {
                        i |= 0xd;
                    } else
                    if (s1.substring(1, 2).equals("e") || s1.substring(1, 2).equals("E"))
                    {
                        i |= 0xe;
                    } else
                    if (s1.substring(1, 2).equals("f") || s1.substring(1, 2).equals("F"))
                    {
                        i |= 0xf;
                    } else
                    {
                        i |= Integer.parseInt(s1.substring(1, 2));
                    }
                } else
                {
                    i = Integer.parseInt(s1.substring(0, 1)) << 4 | Integer.parseInt(s1.substring(1, 2));
                }
                arraylist.add(Integer.valueOf(i));
            }
            return arraylist;
        } while (true);
    }

    public boolean isLastBlock()
    {
        return mBlockOffset + mBlockLength == mImageDataLength;
    }

    public boolean isLastChunk()
    {
        return mChunckOffset + mChunckLength == mBlockLength;
    }

    public void nextBlock()
    {
        mBlockOffset = mBlockOffset + mBlockLength;
        int i;
        if (mImageDataLength - mBlockOffset > mBlockSize)
        {
            i = mBlockSize;
        } else
        {
            i = mImageDataLength - mBlockOffset;
        }
        mBlockLength = i;
    }

    public void nextChunk()
    {
        mChunckOffset = mChunckOffset + mChunckLength;
        int i;
        if (mBlockLength - mChunckOffset > mChunckSize)
        {
            i = mChunckSize;
        } else
        {
            i = mBlockLength - mChunckOffset;
        }
        mChunckLength = i;
    }

    public void onCharacteristicRead(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (bluetoothgattcharacteristic.getUuid().equals(SPOTA_MEM_INFO_UUID))
        {
            bluetoothgattcharacteristic = bluetoothgattcharacteristic.getValue();
            for (int i = 0; i < bluetoothgattcharacteristic.length; i++)
            {
                Log.i("zznkey", (new StringBuilder()).append("read:SPOTA_MEM_INFO_UUID, characteristic.getValue().[").append(i).append("]=").append(Integer.toHexString(bluetoothgattcharacteristic[i] & 0xff)).toString());
                suotaWriteEnd();
            }

            if (isUpdateing)
            {
                isUpdateing = false;
                bleCallBack.getmHandler().postDelayed(new Runnable() {

                    final SuotaUpdateHelper this$0;

                    public void run()
                    {
                        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
                    }

            
            {
                this$0 = SuotaUpdateHelper.this;
                super();
            }
                }, 500L);
                bleCallBack.getmHandler().postDelayed(new Runnable() {

                    final SuotaUpdateHelper this$0;

                    public void run()
                    {
                        bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
                        BleSuotaUpdateTask.unregisterObserver();
                    }

            
            {
                this$0 = SuotaUpdateHelper.this;
                super();
            }
                }, 1500L);
            }
        }
    }

    public void onCharacteristicWriteStatus(int i)
    {
        Log.i("zznkey", (new StringBuilder()).append("status=").append(i).toString());
        if (i != 0) goto _L2; else goto _L1
_L1:
        if (mSpotaWriteStatus != 0) goto _L4; else goto _L3
_L3:
        suotaWriteMemGpioMap();
_L2:
        return;
_L4:
        if (mSpotaWriteStatus == 1)
        {
            suotaWriteDataLen(mBlockSize);
            mBlockOffset = 0;
            mImageDataLength = mPatchData.size();
            if (mImageDataLength - mBlockOffset > mBlockSize)
            {
                i = mBlockSize;
            } else
            {
                i = mImageDataLength - mBlockOffset;
            }
            mBlockLength = i;
            return;
        }
        if (mSpotaWriteStatus == 2)
        {
            mChunckOffset = 0;
            if (mBlockLength - mChunckOffset > mChunckSize)
            {
                i = mChunckSize;
            } else
            {
                i = mBlockLength - mChunckOffset;
            }
            mChunckLength = i;
            mIsLastChunk = false;
            suotaWriteChunk();
            Log.i("zznkey", (new StringBuilder()).append("onCharacteristicWriteStatus mBlockLength=").append(mBlockLength).append(",mBlockOffset=").append(mBlockOffset).toString());
            return;
        }
        if (mSpotaWriteStatus != 3)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (mIsLastChunk) goto _L2; else goto _L5
_L5:
        if (isLastChunk())
        {
            mIsLastChunk = true;
        }
        suotaWriteChunk();
        return;
        if (mSpotaWriteStatus != 4) goto _L2; else goto _L6
_L6:
        System.out.println("update success");
        return;
    }

    public void onConnectionStateChange(boolean flag)
    {
        mConnected = flag;
        Log.i("zznkey", (new StringBuilder()).append("mConnected=").append(mConnected).toString());
    }

    public void onReadRemoteRssi(int i)
    {
    }

    public void onServicesReady(boolean flag)
    {
        Log.i("zznkey", (new StringBuilder()).append("onServicesReady,isReady=").append(flag).toString());
        if (flag)
        {
            suotaServiceWriteCharas(SPOTA_SERV_STATUS_UUID, null, false);
        }
    }

    public void onSuotaServiceStatusChange(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        String s;
        int i;
        bluetoothgattcharacteristic = bluetoothgattcharacteristic.getValue();
        i = bluetoothgattcharacteristic[0] & 0xff;
        s = Integer.toHexString(i);
        Log.i("zznkey", (new StringBuilder()).append("onSpotaServiceStatusChange=0x").append(s).toString());
        Log.i("zznkey", (new StringBuilder()).append("mSpotaWriteStatus=").append(mSpotaWriteStatus).toString());
        bluetoothgattcharacteristic[0];
        JVM INSTR tableswitch 3 22: default 176
    //                   3 184
    //                   4 184
    //                   5 184
    //                   6 184
    //                   7 184
    //                   8 184
    //                   9 184
    //                   10 176
    //                   11 176
    //                   12 176
    //                   13 176
    //                   14 176
    //                   15 176
    //                   16 176
    //                   17 184
    //                   18 184
    //                   19 184
    //                   20 184
    //                   21 184
    //                   22 184;
           goto _L1 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L1 _L1 _L1 _L1 _L1 _L1 _L1 _L2 _L2 _L2 _L2 _L2 _L2
_L2:
        System.out.println((new StringBuilder()).append("update Error,errcode=").append(s).toString());
        bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
        isUpdateing = false;
_L1:
        if (i == 16 || i != 2 || mSpotaWriteStatus != 3)
        {
            return;
        }
        nextBlock();
        if (isLastBlock())
        {
            if (!mIsWriteLastLen)
            {
                mIsWriteLastLen = true;
                suotaWriteDataLen(mBlockLength);
                return;
            } else
            {
                readChara(SPOTA_SERVICE_UUID, SPOTA_MEM_INFO_UUID);
                return;
            }
        }
        mIsLastChunk = false;
        mChunckOffset = 0;
        float f;
        if (mBlockLength - mChunckOffset > mChunckSize)
        {
            i = mChunckSize;
        } else
        {
            i = mBlockLength - mChunckOffset;
        }
        mChunckLength = i;
        Log.i("zznkey", (new StringBuilder()).append("onSuotaServiceStatusChange mBlockLength=").append(mBlockLength).append(",mBlockOffset=").append(mBlockOffset).toString());
        f = (float)mBlockOffset / (float)fileLength;
        bleCallBack.sendOnProgressMessage(Integer.valueOf((int)(f * 100F)));
        suotaWriteChunk();
        return;
    }

    public void readChara(UUID uuid, UUID uuid1)
    {
        if (mBluetoothLeService == null) goto _L2; else goto _L1
_L1:
        if (mBluetoothLeService != null) goto _L4; else goto _L3
_L3:
        Log.i("zznkey", "readChara,mBluetoothLeService = null");
_L2:
        return;
_L4:
        List list;
        int i;
        list = mBluetoothLeService.getSupportedGattServices();
        if (list == null)
        {
            Log.i("zznkey", "readChara,bluetoothGattServices = null");
            return;
        }
        i = 0;
_L8:
        if (i >= list.size()) goto _L2; else goto _L5
_L5:
        BluetoothGattService bluetoothgattservice = (BluetoothGattService)list.get(i);
        if (!bluetoothgattservice.getUuid().toString().equals(uuid.toString())) goto _L7; else goto _L6
_L6:
        int j;
        int k;
        k = bluetoothgattservice.getCharacteristics().size();
        j = 0;
_L9:
        if (j < k)
        {
            BluetoothGattCharacteristic bluetoothgattcharacteristic = (BluetoothGattCharacteristic)bluetoothgattservice.getCharacteristics().get(j);
            if (!bluetoothgattcharacteristic.getUuid().toString().equals(uuid1.toString()))
            {
                break MISSING_BLOCK_LABEL_188;
            }
            if (mBluetoothLeService != null)
            {
                mBluetoothLeService.readCharacteristic(bluetoothgattcharacteristic);
            } else
            {
                Log.i("zznkey", "readChara,mBluetoothLeService = null");
            }
        }
_L7:
        i++;
          goto _L8
        j++;
          goto _L9
    }

    public boolean setSuotaSettings(String s)
    {
        String s1;
        Log.i("zznkey", (new StringBuilder()).append("setSuotaSettings,Settings=").append(s).toString());
        if (s.indexOf(":") == -1)
        {
            return false;
        }
        s1 = s.substring(0, s.indexOf(":"));
        if (!s1.equals("i2c")) goto _L2; else goto _L1
_L1:
        if (s.indexOf("scl=0x") == -1 || s.indexOf("sda=0x") == -1 || s.indexOf("blocksize=") == -1 || s.indexOf("address=") == -1)
        {
            Log.i("zznkey", "setSuotaSettings,type=i2c,the string is err!");
            return false;
        }
        mMemoryType = 0;
        String s2 = s.substring(s.indexOf("scl=0x") + 6, s.indexOf("scl=0x") + 8);
        s1 = s2.substring(0, 1);
        s2 = s2.substring(1, 2);
        mI2cSclGpio = Integer.parseInt(s1) << 4 | Integer.parseInt(s2);
        s2 = s.substring(s.indexOf("sda=0x") + 6, s.indexOf("sda=0x") + 8);
        s1 = s2.substring(0, 1);
        s2 = s2.substring(1, 2);
        mI2cSdaGpio = Integer.parseInt(s1) << 4 | Integer.parseInt(s2);
        s2 = s.substring(s.indexOf("address=0x") + 10, s.indexOf("address=0x") + 12);
        s1 = s2.substring(0, 1);
        s2 = s2.substring(1, 2);
        mAddress = Integer.parseInt(s1) << 4 | Integer.parseInt(s2);
        s = s.substring(s.indexOf("blocksize=") + 10, s.length());
        try
        {
            mBlockSize = Integer.parseInt(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            mBlockSize = 240;
            Log.i("zznkey", "setSuotaSettings,type=i2c,the mBlockSize string is err!");
            return false;
        }
_L4:
        return true;
_L2:
        if (!s1.equals("spi"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (s.indexOf("blocksize=") == -1 || s.indexOf("clk=0x") == -1 || s.indexOf("cs=0x") == -1 || s.indexOf("miso=0x") == -1 || s.indexOf("mosi=0x") == -1)
        {
            Log.i("zznkey", "setSuotaSettings,type=spi,the string is err!");
            return false;
        }
        mMemoryType = 1;
        String s3 = s.substring(s.indexOf("clk=0x") + 6, s.indexOf("clk=0x") + 8);
        s1 = s3.substring(0, 1);
        s3 = s3.substring(1, 2);
        mSpiClkGpio = Integer.parseInt(s1) << 4 | Integer.parseInt(s3);
        s3 = s.substring(s.indexOf("cs=0x") + 5, s.indexOf("cs=0x") + 7);
        s1 = s3.substring(0, 1);
        s3 = s3.substring(1, 2);
        mSpiCsGpio = Integer.parseInt(s1) << 4 | Integer.parseInt(s3);
        s3 = s.substring(s.indexOf("mosi=0x") + 7, s.indexOf("mosi=0x") + 9);
        s1 = s3.substring(0, 1);
        s3 = s3.substring(1, 2);
        mSpiMosiGpio = Integer.parseInt(s1) << 4 | Integer.parseInt(s3);
        s3 = s.substring(s.indexOf("miso=0x") + 7, s.indexOf("miso=0x") + 9);
        s1 = s3.substring(0, 1);
        s3 = s3.substring(1, 2);
        mSpiMisoGpio = Integer.parseInt(s1) << 4 | Integer.parseInt(s3);
        s = s.substring(s.indexOf("blocksize=") + 10, s.length());
        try
        {
            mBlockSize = Integer.parseInt(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            mBlockSize = 240;
            Log.i("zznkey", "setSuotaSettings,type=spi,the mBlockSize string is err!");
            return false;
        }
        Log.i("zznkey", (new StringBuilder()).append("setSuotaSettings,mSpiClkGpio=").append(mSpiClkGpio).append(",mSpiCsGpio=").append(mSpiCsGpio).append(",mSpiMosiGpio=").append(mSpiMosiGpio).append(",mSpiMisoGpio=").append(mSpiMisoGpio).append(",mBlockSize=").append(mBlockSize).toString());
        if (true) goto _L4; else goto _L3
_L3:
        Log.i("zznkey", "setSuotaSettings,type=null,the string is err!");
        return false;
    }

    public void suotaReadImageData(String s)
    {
        if (!s.substring(s.length() - 4, s.length()).equals(".img"))
        {
            System.out.println("update file is not ims");
        }
        s = new File(s);
        fileLength = (int)s.length();
        Log.i("zznkey", (new StringBuilder()).append("readSuotaImageData,file=").append(s).toString());
        mPatchData = new ArrayList();
        s = new FileInputStream(s);
        byte abyte0[] = new byte[1];
_L3:
        if (s.read(abyte0) == -1) goto _L2; else goto _L1
_L1:
        byte byte0 = abyte0[0];
        mPatchData.add(Integer.valueOf(byte0 & 0xff));
          goto _L3
        s;
_L5:
        s.printStackTrace();
        return;
_L2:
        s.close();
        checkSum(mPatchData);
        Log.i("zznkey", (new StringBuilder()).append("readSuotaImageData,imageData.size()=").append(mPatchData.size()).toString());
        if (!setSuotaSettings("spi:clk=0x00,cs=0x03,mosi=0x06,miso=0x05,blocksize=240"))
        {
            System.out.println("set the setting ini error");
            return;
        } else
        {
            readDataIsOver = true;
            return;
        }
        s;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void suotaRebootDev()
    {
        suotaServiceWriteCharas(SPOTA_MEM_DEV_UUID, new byte[] {
            0, 0, 0, -3
        }, true);
    }

    public void suotaServiceWriteCharas(UUID uuid, byte abyte0[], boolean flag)
    {
        if (mBluetoothLeService != null) goto _L2; else goto _L1
_L1:
        Log.i("zznkey", "writeChara,mBluetoothLeService = null");
_L4:
        return;
_L2:
        List list;
        int i;
        list = mBluetoothLeService.getSupportedGattServices();
        if (list == null)
        {
            Log.i("zznkey", "writeChara,bluetoothGattServices = null");
            return;
        }
        i = 0;
_L7:
        if (i >= list.size()) goto _L4; else goto _L3
_L3:
        BluetoothGattService bluetoothgattservice = (BluetoothGattService)list.get(i);
        if (!bluetoothgattservice.getUuid().toString().equals(SPOTA_SERVICE_UUID.toString())) goto _L6; else goto _L5
_L5:
        int j;
        int k;
        k = bluetoothgattservice.getCharacteristics().size();
        j = 0;
_L8:
        if (j < k)
        {
            BluetoothGattCharacteristic bluetoothgattcharacteristic = (BluetoothGattCharacteristic)bluetoothgattservice.getCharacteristics().get(j);
            if (!bluetoothgattcharacteristic.getUuid().toString().equals(uuid.toString()))
            {
                break MISSING_BLOCK_LABEL_212;
            }
            if (flag)
            {
                if (mBluetoothLeService != null)
                {
                    bluetoothgattcharacteristic.setValue(abyte0);
                    mBluetoothLeService.writeCharacteristic(bluetoothgattcharacteristic);
                } else
                {
                    Log.i("zznkey", "writeChara,mBluetoothLeService = null");
                }
            } else
            {
                mBluetoothLeService.setSuotaCharacteristicNotification(bluetoothgattcharacteristic, true);
            }
        }
_L6:
        i++;
          goto _L7
        j++;
          goto _L8
    }

    public void suotaUpdateStart()
    {
        isUpdateing = true;
        mIsWriteLastLen = false;
        suotaWriteMemDev();
    }

    public void suotaWriteChunk()
    {
        byte abyte0[] = new byte[mChunckLength];
        for (int i = 0; i < abyte0.length; i++)
        {
            abyte0[i] = (byte)((Integer)mPatchData.get(mBlockOffset + mChunckOffset + i)).intValue();
        }

        suotaServiceWriteCharas(SPOTA_PATCH_DATA_UUID, abyte0, true);
        mSpotaWriteStatus = 3;
        nextChunk();
    }

    public void suotaWriteDataLen(int i)
    {
        byte byte0 = (byte)(i & 0xff);
        byte byte1 = (byte)(i >> 8 & 0xff);
        suotaServiceWriteCharas(SPOTA_PATCH_LEN_UUID, new byte[] {
            byte0, byte1
        }, true);
        mSpotaWriteStatus = 2;
        Log.i("zznkey", (new StringBuilder()).append("writeSuotaDataLen,datalen=").append(i).toString());
    }

    public void suotaWriteEnd()
    {
        mSpotaWriteStatus = 4;
        Log.i("zznkey", (new StringBuilder()).append("suotaWriteEnd:mBlockOffset=").append(mBlockOffset).append(",mImageDataLength=").append(mImageDataLength).toString());
        suotaServiceWriteCharas(SPOTA_MEM_DEV_UUID, new byte[] {
            0, 0, 0, -2
        }, true);
    }

    public void suotaWriteMemDev()
    {
        byte abyte0[] = new byte[4];
        mSpotaWriteStatus = 0;
        String s;
        int i;
        if (mMemoryType == 0)
        {
            abyte0[3] = 18;
        } else
        if (mMemoryType == 1)
        {
            abyte0[3] = 19;
        } else
        {
            abyte0[3] = 0;
        }
        abyte0[0] = 0;
        abyte0[2] = 0;
        abyte0[1] = 0;
        s = "";
        i = abyte0.length - 1;
        while (i > -1) 
        {
            if (abyte0[i] < 16)
            {
                s = (new StringBuilder()).append(s).append("0").append(Integer.toHexString(abyte0[i])).toString();
            } else
            {
                s = (new StringBuilder()).append(s).append(Integer.toHexString(abyte0[i])).toString();
            }
            i--;
        }
        Log.i("zznkey", (new StringBuilder()).append("spotaWriteMemDev,mem_dev=0x").append(s).toString());
        suotaServiceWriteCharas(SPOTA_MEM_DEV_UUID, abyte0, true);
    }

    public void suotaWriteMemGpioMap()
    {
        byte abyte0[] = new byte[4];
        String s;
        int i;
        if (mMemoryType == 0)
        {
            abyte0[0] = (byte)mI2cSdaGpio;
            abyte0[1] = (byte)mI2cSclGpio;
            abyte0[2] = (byte)mAddress;
            abyte0[3] = 0;
        } else
        if (mMemoryType == 1)
        {
            abyte0[0] = (byte)mSpiClkGpio;
            abyte0[1] = (byte)mSpiCsGpio;
            abyte0[2] = (byte)mSpiMosiGpio;
            abyte0[3] = (byte)mSpiMisoGpio;
        } else
        {
            abyte0[0] = 0;
            abyte0[1] = 0;
            abyte0[2] = 0;
            abyte0[3] = 0;
        }
        mSpotaWriteStatus = 1;
        s = "";
        i = abyte0.length - 1;
        while (i > -1) 
        {
            if (abyte0[i] < 16)
            {
                s = (new StringBuilder()).append(s).append("0").append(Integer.toHexString(abyte0[i])).toString();
            } else
            {
                s = (new StringBuilder()).append(s).append(Integer.toHexString(abyte0[i])).toString();
            }
            i--;
        }
        Log.i("zznkey", (new StringBuilder()).append("spotaWriteGpioMap,mem_gpio_map=0x").append(s).toString());
        suotaServiceWriteCharas(SPOTA_GPIO_MAP_UUID, abyte0, true);
    }

}
