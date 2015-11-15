// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;

public class InfiniteViewPager extends ViewPager
{

    public static final int OFFSET = 1000;
    private ArrayList datesInMonth;
    private boolean enabled;
    private int rowHeight;
    private boolean sixWeeksInCalendar;

    public InfiniteViewPager(Context context)
    {
        super(context);
        enabled = true;
        sixWeeksInCalendar = false;
        rowHeight = 0;
    }

    public InfiniteViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        enabled = true;
        sixWeeksInCalendar = false;
        rowHeight = 0;
    }

    public ArrayList getDatesInMonth()
    {
        return datesInMonth;
    }

    public boolean isEnabled()
    {
        return enabled;
    }

    public boolean isSixWeeksInCalendar()
    {
        return sixWeeksInCalendar;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (enabled)
        {
            return super.onInterceptTouchEvent(motionevent);
        } else
        {
            return false;
        }
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        int k = datesInMonth.size() / 7;
        boolean flag;
        int l;
        if (android.view.View.MeasureSpec.getMode(j) == 0x80000000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = getMeasuredHeight();
        j = i;
        if (flag)
        {
            j = i;
            if (rowHeight == 0)
            {
                i = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x40000000);
                j = i;
                if (getChildCount() > 0)
                {
                    View view = getChildAt(0);
                    view.measure(i, android.view.View.MeasureSpec.makeMeasureSpec(l, 0x80000000));
                    rowHeight = view.getMeasuredHeight() / k;
                    j = i;
                }
            }
        }
        if (sixWeeksInCalendar)
        {
            i = rowHeight * 6;
        } else
        {
            i = rowHeight * k;
        }
        super.onMeasure(j, android.view.View.MeasureSpec.makeMeasureSpec(i + 3, 0x40000000));
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (enabled)
        {
            return super.onTouchEvent(motionevent);
        } else
        {
            return false;
        }
    }

    public void setAdapter(PagerAdapter pageradapter)
    {
        super.setAdapter(pageradapter);
        setCurrentItem(1000);
    }

    public void setDatesInMonth(ArrayList arraylist)
    {
        datesInMonth = arraylist;
    }

    public void setEnabled(boolean flag)
    {
        enabled = flag;
    }

    public void setSixWeeksInCalendar(boolean flag)
    {
        sixWeeksInCalendar = flag;
        rowHeight = 0;
    }
}
