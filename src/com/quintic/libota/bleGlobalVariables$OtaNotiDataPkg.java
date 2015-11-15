// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.quintic.libota;


// Referenced classes of package com.quintic.libota:
//            bleGlobalVariables

protected static final class  extends Enum
{

    private static final OTA_NOTI_RCVED_CS_H ENUM$VALUES[];
    public static final OTA_NOTI_RCVED_CS_H OTA_NOTI_CMD;
    public static final OTA_NOTI_RCVED_CS_H OTA_NOTI_LENGTH_H;
    public static final OTA_NOTI_RCVED_CS_H OTA_NOTI_LENGTH_L;
    public static final OTA_NOTI_RCVED_CS_H OTA_NOTI_RCVED_CS_H;
    public static final OTA_NOTI_RCVED_CS_H OTA_NOTI_RCVED_CS_L;
    public static final OTA_NOTI_RCVED_CS_H OTA_NOTI_RCVED_LENGTH_H;
    public static final OTA_NOTI_RCVED_CS_H OTA_NOTI_RCVED_LENGTH_L;
    public static final OTA_NOTI_RCVED_CS_H OTA_NOTI_RESULT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/quintic/libota/bleGlobalVariables$OtaNotiDataPkg, s);
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
        OTA_NOTI_LENGTH_L = new <init>("OTA_NOTI_LENGTH_L", 0);
        OTA_NOTI_LENGTH_H = new <init>("OTA_NOTI_LENGTH_H", 1);
        OTA_NOTI_CMD = new <init>("OTA_NOTI_CMD", 2);
        OTA_NOTI_RESULT = new <init>("OTA_NOTI_RESULT", 3);
        OTA_NOTI_RCVED_LENGTH_L = new <init>("OTA_NOTI_RCVED_LENGTH_L", 4);
        OTA_NOTI_RCVED_LENGTH_H = new <init>("OTA_NOTI_RCVED_LENGTH_H", 5);
        OTA_NOTI_RCVED_CS_L = new <init>("OTA_NOTI_RCVED_CS_L", 6);
        OTA_NOTI_RCVED_CS_H = new <init>("OTA_NOTI_RCVED_CS_H", 7);
        ENUM$VALUES = (new ENUM.VALUES[] {
            OTA_NOTI_LENGTH_L, OTA_NOTI_LENGTH_H, OTA_NOTI_CMD, OTA_NOTI_RESULT, OTA_NOTI_RCVED_LENGTH_L, OTA_NOTI_RCVED_LENGTH_H, OTA_NOTI_RCVED_CS_L, OTA_NOTI_RCVED_CS_H
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
