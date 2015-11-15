// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;


// Referenced classes of package com.veclink.bracelet.bean:
//            BaseRemindParam

public class BleDrinkRemindParam extends BaseRemindParam
{

    public int hour;
    public int minute;
    public int remindCount;
    public int remindCyle;
    public int remindRunningTime;
    public int remindSerialNumber;

    public BleDrinkRemindParam()
    {
    }

    public BleDrinkRemindParam(int i, int j, int k, int l, int i1, int j1)
    {
        remindSerialNumber = i;
        hour = j;
        minute = k;
        remindRunningTime = l;
        remindCyle = i1;
        remindCount = j1;
    }

    public BleDrinkRemindParam(int i, int j, int k, int l, int i1, int j1, int k1)
    {
        remindSerialNumber = i;
        hour = j;
        minute = k;
        remindRunningTime = l;
        remindCyle = i1;
        remindCount = j1;
        openflag = k1;
    }

    public byte[] toByteArrayParam()
    {
        remindType = 1;
        paramArray[0] = remindType;
        paramArray[1] = (byte)openflag;
        paramArray[2] = (byte)remindSerialNumber;
        paramArray[3] = (byte)hour;
        paramArray[4] = (byte)minute;
        paramArray[5] = (byte)remindRunningTime;
        paramArray[6] = (byte)remindCyle;
        paramArray[7] = (byte)remindCount;
        return paramArray;
    }
}
