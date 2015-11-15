// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;


// Referenced classes of package com.veclink.bracelet.bean:
//            BaseRemindParam

public class BleAlarmRemindParam extends BaseRemindParam
{

    public int alarmHour;
    public int alarmMinute;
    public int repeatDay[];

    public BleAlarmRemindParam()
    {
        repeatDay = new int[7];
    }

    public BleAlarmRemindParam(int i, int j, int ai[])
    {
        repeatDay = new int[7];
        alarmHour = i;
        alarmMinute = j;
        repeatDay = ai;
    }

    public BleAlarmRemindParam(int i, int j, int ai[], int k, int l)
    {
        repeatDay = new int[7];
        alarmHour = i;
        alarmMinute = j;
        repeatDay = ai;
        openflag = k;
        querysetflag = l;
    }

    public byte[] toByteArrayParam()
    {
        remindType = 3;
        paramArray[0] = remindType;
        paramArray[1] = (byte)openflag;
        paramArray[2] = (byte)alarmHour;
        paramArray[3] = (byte)alarmMinute;
        for (int i = 0; i < repeatDay.length; i++)
        {
            paramArray[i + 4] = (byte)repeatDay[i];
        }

        return paramArray;
    }
}
