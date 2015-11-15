// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.quintic.libota;

import java.util.UUID;

public class bleGlobalVariables
{
    protected static final class OtaNotiDataPkg extends Enum
    {

        private static final OtaNotiDataPkg ENUM$VALUES[];
        public static final OtaNotiDataPkg OTA_NOTI_CMD;
        public static final OtaNotiDataPkg OTA_NOTI_LENGTH_H;
        public static final OtaNotiDataPkg OTA_NOTI_LENGTH_L;
        public static final OtaNotiDataPkg OTA_NOTI_RCVED_CS_H;
        public static final OtaNotiDataPkg OTA_NOTI_RCVED_CS_L;
        public static final OtaNotiDataPkg OTA_NOTI_RCVED_LENGTH_H;
        public static final OtaNotiDataPkg OTA_NOTI_RCVED_LENGTH_L;
        public static final OtaNotiDataPkg OTA_NOTI_RESULT;

        public static OtaNotiDataPkg valueOf(String s)
        {
            return (OtaNotiDataPkg)Enum.valueOf(com/quintic/libota/bleGlobalVariables$OtaNotiDataPkg, s);
        }

        public static OtaNotiDataPkg[] values()
        {
            OtaNotiDataPkg aotanotidatapkg[] = ENUM$VALUES;
            int i = aotanotidatapkg.length;
            OtaNotiDataPkg aotanotidatapkg1[] = new OtaNotiDataPkg[i];
            System.arraycopy(aotanotidatapkg, 0, aotanotidatapkg1, 0, i);
            return aotanotidatapkg1;
        }

        static 
        {
            OTA_NOTI_LENGTH_L = new OtaNotiDataPkg("OTA_NOTI_LENGTH_L", 0);
            OTA_NOTI_LENGTH_H = new OtaNotiDataPkg("OTA_NOTI_LENGTH_H", 1);
            OTA_NOTI_CMD = new OtaNotiDataPkg("OTA_NOTI_CMD", 2);
            OTA_NOTI_RESULT = new OtaNotiDataPkg("OTA_NOTI_RESULT", 3);
            OTA_NOTI_RCVED_LENGTH_L = new OtaNotiDataPkg("OTA_NOTI_RCVED_LENGTH_L", 4);
            OTA_NOTI_RCVED_LENGTH_H = new OtaNotiDataPkg("OTA_NOTI_RCVED_LENGTH_H", 5);
            OTA_NOTI_RCVED_CS_L = new OtaNotiDataPkg("OTA_NOTI_RCVED_CS_L", 6);
            OTA_NOTI_RCVED_CS_H = new OtaNotiDataPkg("OTA_NOTI_RCVED_CS_H", 7);
            ENUM$VALUES = (new OtaNotiDataPkg[] {
                OTA_NOTI_LENGTH_L, OTA_NOTI_LENGTH_H, OTA_NOTI_CMD, OTA_NOTI_RESULT, OTA_NOTI_RCVED_LENGTH_L, OTA_NOTI_RCVED_LENGTH_H, OTA_NOTI_RCVED_CS_L, OTA_NOTI_RCVED_CS_H
            });
        }

        private OtaNotiDataPkg(String s, int i)
        {
            super(s, i);
        }
    }

    protected static final class otaCmd extends Enum
    {

        private static final otaCmd ENUM$VALUES[];
        public static final otaCmd OTA_CMD_BRICK_DATA;
        public static final otaCmd OTA_CMD_DATA_VERIFY;
        public static final otaCmd OTA_CMD_EXECUTION_NEW_CODE;
        public static final otaCmd OTA_CMD_META_DATA;

        public static otaCmd valueOf(String s)
        {
            return (otaCmd)Enum.valueOf(com/quintic/libota/bleGlobalVariables$otaCmd, s);
        }

        public static otaCmd[] values()
        {
            otaCmd aotacmd[] = ENUM$VALUES;
            int i = aotacmd.length;
            otaCmd aotacmd1[] = new otaCmd[i];
            System.arraycopy(aotacmd, 0, aotacmd1, 0, i);
            return aotacmd1;
        }

        static 
        {
            OTA_CMD_META_DATA = new otaCmd("OTA_CMD_META_DATA", 0);
            OTA_CMD_BRICK_DATA = new otaCmd("OTA_CMD_BRICK_DATA", 1);
            OTA_CMD_DATA_VERIFY = new otaCmd("OTA_CMD_DATA_VERIFY", 2);
            OTA_CMD_EXECUTION_NEW_CODE = new otaCmd("OTA_CMD_EXECUTION_NEW_CODE", 3);
            ENUM$VALUES = (new otaCmd[] {
                OTA_CMD_META_DATA, OTA_CMD_BRICK_DATA, OTA_CMD_DATA_VERIFY, OTA_CMD_EXECUTION_NEW_CODE
            });
        }

        private otaCmd(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class otaResult extends Enum
    {

        private static final otaResult ENUM$VALUES[];
        public static final otaResult OTA_RESULT_DATA_RESPONSE_TIMEOUT;
        public static final otaResult OTA_RESULT_DEVICE_NOT_SUPPORT_OTA;
        public static final otaResult OTA_RESULT_FW_SIZE_ERROR;
        public static final otaResult OTA_RESULT_FW_VERIFY_ERROR;
        public static final otaResult OTA_RESULT_INVALID_ARGUMENT;
        public static final otaResult OTA_RESULT_META_RESPONSE_TIMEOUT;
        public static final otaResult OTA_RESULT_OPEN_FIRMWAREFILE_ERROR;
        public static final otaResult OTA_RESULT_PKT_CHECKSUM_ERROR;
        public static final otaResult OTA_RESULT_PKT_LEN_ERROR;
        public static final otaResult OTA_RESULT_RECEIVED_INVALID_PACKET;
        public static final otaResult OTA_RESULT_SEND_META_ERROR;
        public static final otaResult OTA_RESULT_SUCCESS;

        public static otaResult valueOf(String s)
        {
            return (otaResult)Enum.valueOf(com/quintic/libota/bleGlobalVariables$otaResult, s);
        }

        public static otaResult[] values()
        {
            otaResult aotaresult[] = ENUM$VALUES;
            int i = aotaresult.length;
            otaResult aotaresult1[] = new otaResult[i];
            System.arraycopy(aotaresult, 0, aotaresult1, 0, i);
            return aotaresult1;
        }

        static 
        {
            OTA_RESULT_SUCCESS = new otaResult("OTA_RESULT_SUCCESS", 0);
            OTA_RESULT_PKT_CHECKSUM_ERROR = new otaResult("OTA_RESULT_PKT_CHECKSUM_ERROR", 1);
            OTA_RESULT_PKT_LEN_ERROR = new otaResult("OTA_RESULT_PKT_LEN_ERROR", 2);
            OTA_RESULT_DEVICE_NOT_SUPPORT_OTA = new otaResult("OTA_RESULT_DEVICE_NOT_SUPPORT_OTA", 3);
            OTA_RESULT_FW_SIZE_ERROR = new otaResult("OTA_RESULT_FW_SIZE_ERROR", 4);
            OTA_RESULT_FW_VERIFY_ERROR = new otaResult("OTA_RESULT_FW_VERIFY_ERROR", 5);
            OTA_RESULT_INVALID_ARGUMENT = new otaResult("OTA_RESULT_INVALID_ARGUMENT", 6);
            OTA_RESULT_OPEN_FIRMWAREFILE_ERROR = new otaResult("OTA_RESULT_OPEN_FIRMWAREFILE_ERROR", 7);
            OTA_RESULT_SEND_META_ERROR = new otaResult("OTA_RESULT_SEND_META_ERROR", 8);
            OTA_RESULT_RECEIVED_INVALID_PACKET = new otaResult("OTA_RESULT_RECEIVED_INVALID_PACKET", 9);
            OTA_RESULT_META_RESPONSE_TIMEOUT = new otaResult("OTA_RESULT_META_RESPONSE_TIMEOUT", 10);
            OTA_RESULT_DATA_RESPONSE_TIMEOUT = new otaResult("OTA_RESULT_DATA_RESPONSE_TIMEOUT", 11);
            ENUM$VALUES = (new otaResult[] {
                OTA_RESULT_SUCCESS, OTA_RESULT_PKT_CHECKSUM_ERROR, OTA_RESULT_PKT_LEN_ERROR, OTA_RESULT_DEVICE_NOT_SUPPORT_OTA, OTA_RESULT_FW_SIZE_ERROR, OTA_RESULT_FW_VERIFY_ERROR, OTA_RESULT_INVALID_ARGUMENT, OTA_RESULT_OPEN_FIRMWAREFILE_ERROR, OTA_RESULT_SEND_META_ERROR, OTA_RESULT_RECEIVED_INVALID_PACKET, 
                OTA_RESULT_META_RESPONSE_TIMEOUT, OTA_RESULT_DATA_RESPONSE_TIMEOUT
            });
        }

        private otaResult(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String QuinticOtaService = "0000fee8-0000-1000-8000-00805f9b34fb";
    public static final String QuinticQppService = "0000fee9-0000-1000-8000-00805f9b34fb";
    public static final UUID UUID_OTA_NOTIFY_CHARACTERISTIC = UUID.fromString("003784cf-f7e3-55b4-6c4c-9fd140100a16");
    public static final UUID UUID_OTA_WRITE_CHARACTERISTIC = UUID.fromString("013784cf-f7e3-55b4-6c4c-9fd140100a16");
    public static final UUID UUID_QPP_DESCRIPTER = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    public static final UUID UUID_QPP_WRITE_CHARACTERISTIC = UUID.fromString("d44bc439-abfd-45a2-b575-925416129600");
    public static final UUID UUID_QUINTIC_OTA_SERVICE = UUID.fromString("0000fee8-0000-1000-8000-00805f9b34fb");
    public static final UUID UUID_QUINTIC_QPP_SERVICE = UUID.fromString("0000fee9-0000-1000-8000-00805f9b34fb");
    public static final String otaNotifyCharacteristic = "003784cf-f7e3-55b4-6c4c-9fd140100a16";
    public static final String otaWriteCharacteristic = "013784cf-f7e3-55b4-6c4c-9fd140100a16";
    public static final String qppDescripter = "00002902-0000-1000-8000-00805f9b34fb";
    public static final String qppWriteCharacteristic = "d44bc439-abfd-45a2-b575-925416129600";

    public bleGlobalVariables()
    {
    }

}
