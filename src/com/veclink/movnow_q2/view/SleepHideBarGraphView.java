// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.view:
//            SleepHideBarDataAreaGraphView, SleepHideBarHeadGraphView

public class SleepHideBarGraphView extends LinearLayout
{

    SleepHideBarDataAreaGraphView dataAreaGraphView;
    SleepHideBarHeadGraphView headGraphView;

    public SleepHideBarGraphView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        addView(LayoutInflater.from(context).inflate(0x7f030060, null));
        dataAreaGraphView = (SleepHideBarDataAreaGraphView)findViewById(0x7f0601c4);
        headGraphView = (SleepHideBarHeadGraphView)findViewById(0x7f0601c3);
    }

    public SleepHideBarGraphView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void init(List list, List list1, boolean flag)
    {
        headGraphView.init(list1, flag);
        dataAreaGraphView.init(list, flag);
    }

    public void invalidate()
    {
        super.invalidate();
        headGraphView.invalidate();
        dataAreaGraphView.invalidate();
    }

    public void postInvalidate()
    {
        super.postInvalidate();
        headGraphView.postInvalidate();
        dataAreaGraphView.postInvalidate();
    }
}
