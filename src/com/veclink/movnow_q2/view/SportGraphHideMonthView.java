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
//            SportGraphHideHeadView, SportGraphHideMonthDataAreaView

public class SportGraphHideMonthView extends LinearLayout
{

    SportGraphHideMonthDataAreaView dataAreaView;
    SportGraphHideHeadView headView;

    public SportGraphHideMonthView(Context context)
    {
        this(context, null);
    }

    public SportGraphHideMonthView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        addView(LayoutInflater.from(context).inflate(0x7f030062, null));
        headView = (SportGraphHideHeadView)findViewById(0x7f0601c5);
        dataAreaView = (SportGraphHideMonthDataAreaView)findViewById(0x7f0601c7);
    }

    public void postInvalidate()
    {
        super.postInvalidate();
        headView.postInvalidate();
        dataAreaView.postInvalidate();
    }

    public void setDataInfo(List list, List list1)
    {
        headView.setDataInfo(list1);
        dataAreaView.setDataInfo(list);
        postInvalidate();
    }
}
