// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.quintic.libota;


// Referenced classes of package com.quintic.libota:
//            bleGlobalVariables

public static final class  extends Enum
{

    private static final OTA_RESULT_DATA_RESPONSE_TIMEOUT ENUM$VALUES[];
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_DATA_RESPONSE_TIMEOUT;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_DEVICE_NOT_SUPPORT_OTA;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_FW_SIZE_ERROR;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_FW_VERIFY_ERROR;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_INVALID_ARGUMENT;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_META_RESPONSE_TIMEOUT;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_OPEN_FIRMWAREFILE_ERROR;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_PKT_CHECKSUM_ERROR;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_PKT_LEN_ERROR;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_RECEIVED_INVALID_PACKET;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_SEND_META_ERROR;
    public static final OTA_RESULT_DATA_RESPONSE_TIMEOUT OTA_RESULT_SUCCESS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/quintic/libota/bleGlobalVariables$otaResult, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        OTA_RESULT_SUCCESS = new <init>("OTA_RESULT_SUCCESS", 0);
        OTA_RESULT_PKT_CHECKSUM_ERROR = new <init>("OTA_RESULT_PKT_CHECKSUM_ERROR", 1);
        OTA_RESULT_PKT_LEN_ERROR = new <init>("OTA_RESULT_PKT_LEN_ERROR", 2);
        OTA_RESULT_DEVICE_NOT_SUPPORT_OTA = new <init>("OTA_RESULT_DEVICE_NOT_SUPPORT_OTA", 3);
        OTA_RESULT_FW_SIZE_ERROR = new <init>("OTA_RESULT_FW_SIZE_ERROR", 4);
        OTA_RESULT_FW_VERIFY_ERROR = new <init>("OTA_RESULT_FW_VERIFY_ERROR", 5);
        OTA_RESULT_INVALID_ARGUMENT = new <init>("OTA_RESULT_INVALID_ARGUMENT", 6);
        OTA_RESULT_OPEN_FIRMWAREFILE_ERROR = new <init>("OTA_RESULT_OPEN_FIRMWAREFILE_ERROR", 7);
        OTA_RESULT_SEND_META_ERROR = new <init>("OTA_RESULT_SEND_META_ERROR", 8);
        OTA_RESULT_RECEIVED_INVALID_PACKET = new <init>("OTA_RESULT_RECEIVED_INVALID_PACKET", 9);
        OTA_RESULT_META_RESPONSE_TIMEOUT = new <init>("OTA_RESULT_META_RESPONSE_TIMEOUT", 10);
        OTA_RESULT_DATA_RESPONSE_TIMEOUT = new <init>("OTA_RESULT_DATA_RESPONSE_TIMEOUT", 11);
        ENUM$VALUES = (new ENUM.VALUES[] {
            OTA_RESULT_SUCCESS, OTA_RESULT_PKT_CHECKSUM_ERROR, OTA_RESULT_PKT_LEN_ERROR, OTA_RESULT_DEVICE_NOT_SUPPORT_OTA, OTA_RESULT_FW_SIZE_ERROR, OTA_RESULT_FW_VERIFY_ERROR, OTA_RESULT_INVALID_ARGUMENT, OTA_RESULT_OPEN_FIRMWAREFILE_ERROR, OTA_RESULT_SEND_META_ERROR, OTA_RESULT_RECEIVED_INVALID_PACKET, 
            OTA_RESULT_META_RESPONSE_TIMEOUT, OTA_RESULT_DATA_RESPONSE_TIMEOUT
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
