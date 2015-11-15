// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.view.View;
import java.util.Date;

public abstract class CaldroidListener
{

    public CaldroidListener()
    {
    }

    public void onCaldroidViewCreated()
    {
    }

    public void onChangeMonth(int i, int j)
    {
    }

    public void onLongClickDate(Date date, View view)
    {
    }

    public abstract void onSelectDate(Date date, View view);
}
