// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.widget.CompoundButton;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            LongSittingRemindListActivity

class this._cls0
    implements android.widget.stener
{

    final LongSittingRemindListActivity this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        LongSittingRemindListActivity.access$202(LongSittingRemindListActivity.this, flag);
        SharedPreferencesUtils.setSharedPreferences(LongSittingRemindListActivity.this, "open_wakeup", Boolean.valueOf(flag));
        if (!LongSittingRemindListActivity.access$300(LongSittingRemindListActivity.this))
        {
            startSyn();
        }
    }

    ()
    {
        this$0 = LongSittingRemindListActivity.this;
        super();
    }
}
