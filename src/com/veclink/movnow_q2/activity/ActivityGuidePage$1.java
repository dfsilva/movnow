// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            ActivityGuidePage

class this._cls0
    implements android.support.v4.view.geListener
{

    final ActivityGuidePage this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        int j = 0;
        while (j < ActivityGuidePage.access$000(ActivityGuidePage.this).getChildCount()) 
        {
            if (j == i)
            {
                ActivityGuidePage.access$000(ActivityGuidePage.this).getChildAt(j).setSelected(true);
            } else
            {
                ActivityGuidePage.access$000(ActivityGuidePage.this).getChildAt(j).setSelected(false);
            }
            j++;
        }
        if (i == ActivityGuidePage.access$000(ActivityGuidePage.this).getChildCount() - 1)
        {
            if (isFirstIn)
            {
                ActivityGuidePage.access$100(ActivityGuidePage.this).setVisibility(0);
                return;
            } else
            {
                ActivityGuidePage.access$100(ActivityGuidePage.this).setVisibility(8);
                return;
            }
        } else
        {
            ActivityGuidePage.access$100(ActivityGuidePage.this).setVisibility(8);
            return;
        }
    }

    ner()
    {
        this$0 = ActivityGuidePage.this;
        super();
    }
}
