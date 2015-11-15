// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;


// Referenced classes of package com.veclink.bracelet.bletask:
//            BleQuinticOtaUpdateTask

static class 
{

    static final int $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[];

    static 
    {
        $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult = new int[com.quintic.libota.lt.values().length];
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_SUCCESS.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_PKT_CHECKSUM_ERROR.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_PKT_LEN_ERROR.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_DEVICE_NOT_SUPPORT_OTA.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_FW_SIZE_ERROR.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_FW_VERIFY_ERROR.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_OPEN_FIRMWAREFILE_ERROR.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_META_RESPONSE_TIMEOUT.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_DATA_RESPONSE_TIMEOUT.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_SEND_META_ERROR.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_RECEIVED_INVALID_PACKET.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.lt.OTA_RESULT_INVALID_ARGUMENT.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
