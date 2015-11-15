// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import java.io.Serializable;
import java.util.Arrays;

public class RemindObject
    implements Serializable, Comparable
{

    static final long serialVersionUID = 0xacc43e613af1bd2cL;
    private int hour;
    private int minute;
    private boolean repeateArray[];
    private String time;
    private String title;
    private String type;

    public RemindObject()
    {
        repeateArray = new boolean[7];
    }

    public RemindObject(String s, String s1)
    {
        repeateArray = new boolean[7];
        time = s;
        title = s1;
    }

    public static long getSerialversionuid()
    {
        return 0xacc43e613af1bd2cL;
    }

    public int compareTo(RemindObject remindobject)
    {
        return time.compareTo(remindobject.time);
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((RemindObject)obj);
    }

    public int getHour()
    {
        return hour;
    }

    public int getMinute()
    {
        return minute;
    }

    public boolean[] getRepeateArray()
    {
        return repeateArray;
    }

    public String getTime()
    {
        return time;
    }

    public String getTitle()
    {
        return title;
    }

    public String getType()
    {
        return type;
    }

    public void setHour(int i)
    {
        hour = i;
    }

    public void setMinute(int i)
    {
        minute = i;
    }

    public void setRepeateArray(boolean aflag[])
    {
        repeateArray = aflag;
    }

    public void setTime(String s)
    {
        time = s;
    }

    public void setTitle(String s)
    {
        title = s;
    }

    public void setType(String s)
    {
        type = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("RemindObject [time=").append(time).append(", title=").append(title).append(", hour=").append(hour).append(", minute=").append(minute).append(", type=").append(type).append(", repeateArray=").append(Arrays.toString(repeateArray)).append("]").toString();
    }
}
