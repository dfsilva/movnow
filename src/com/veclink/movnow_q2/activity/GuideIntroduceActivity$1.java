// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            GuideIntroduceActivity

class this._cls0
    implements android.support.v4.view.tener
{

    final GuideIntroduceActivity this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        if (i == 0)
        {
            GuideIntroduceActivity.access$000(GuideIntroduceActivity.this).setVisibility(0);
            return;
        } else
        {
            GuideIntroduceActivity.access$000(GuideIntroduceActivity.this).setVisibility(8);
            return;
        }
    }

    ()
    {
        this$0 = GuideIntroduceActivity.this;
        super();
    }
}
