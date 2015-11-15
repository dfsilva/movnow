// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;


// Referenced classes of package com.veclink.bracelet.bean:
//            BaseRemindParam

public class BleLongSittingRemindParam extends BaseRemindParam
{

    public int endHour;
    public int endMinute;
    public int intervalHour;
    public int intervalMinute;
    public int startHour;
    public int startMinute;

    public BleLongSittingRemindParam()
    {
    }

    public BleLongSittingRemindParam(int i, int j, int k, int l, int i1, int j1)
    {
        intervalHour = i;
        intervalMinute = j;
        startHour = k;
        startMinute = l;
        endHour = i1;
        endMinute = j1;
    }

    public BleLongSittingRemindParam(int i, int j, int k, int l, int i1, int j1, int k1)
    {
        intervalHour = i;
        intervalMinute = j;
        startHour = k;
        startMinute = l;
        endHour = i1;
        endMinute = j1;
        openflag = k1;
    }

    public byte[] toByteArrayParam()
    {
        remindType = 2;
        paramArray[0] = remindType;
        paramArray[1] = (byte)openflag;
        paramArray[2] = (byte)intervalHour;
        paramArray[3] = (byte)intervalMinute;
        paramArray[4] = (byte)startHour;
        paramArray[5] = (byte)startMinute;
        paramArray[6] = (byte)endHour;
        paramArray[7] = (byte)endMinute;
        return paramArray;
    }
}
