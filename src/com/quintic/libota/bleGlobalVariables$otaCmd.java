// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.quintic.libota;


// Referenced classes of package com.quintic.libota:
//            bleGlobalVariables

protected static final class  extends Enum
{

    private static final OTA_CMD_EXECUTION_NEW_CODE ENUM$VALUES[];
    public static final OTA_CMD_EXECUTION_NEW_CODE OTA_CMD_BRICK_DATA;
    public static final OTA_CMD_EXECUTION_NEW_CODE OTA_CMD_DATA_VERIFY;
    public static final OTA_CMD_EXECUTION_NEW_CODE OTA_CMD_EXECUTION_NEW_CODE;
    public static final OTA_CMD_EXECUTION_NEW_CODE OTA_CMD_META_DATA;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/quintic/libota/bleGlobalVariables$otaCmd, s);
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
        OTA_CMD_META_DATA = new <init>("OTA_CMD_META_DATA", 0);
        OTA_CMD_BRICK_DATA = new <init>("OTA_CMD_BRICK_DATA", 1);
        OTA_CMD_DATA_VERIFY = new <init>("OTA_CMD_DATA_VERIFY", 2);
        OTA_CMD_EXECUTION_NEW_CODE = new <init>("OTA_CMD_EXECUTION_NEW_CODE", 3);
        ENUM$VALUES = (new ENUM.VALUES[] {
            OTA_CMD_META_DATA, OTA_CMD_BRICK_DATA, OTA_CMD_DATA_VERIFY, OTA_CMD_EXECUTION_NEW_CODE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
