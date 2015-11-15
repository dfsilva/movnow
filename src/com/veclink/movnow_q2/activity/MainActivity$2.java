// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MainActivity

class this._cls0
    implements android.support.v4.view.eChangeListener
{

    final MainActivity this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        MainActivity.access$102(MainActivity.this, i);
        if (MainActivity.access$100(MainActivity.this) == MainActivity.access$200(MainActivity.this))
        {
            MainActivity.access$300(MainActivity.this).setVisibility(8);
            return;
        } else
        {
            MainActivity.access$300(MainActivity.this).setVisibility(0);
            return;
        }
    }

    Listener()
    {
        this$0 = MainActivity.this;
        super();
    }
}
