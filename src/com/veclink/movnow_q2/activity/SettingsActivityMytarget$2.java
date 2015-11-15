// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.util.Log;
import com.veclink.movnow_q2.view.wheel.OnWheelChangedListener;
import com.veclink.movnow_q2.view.wheel.WheelView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMytarget

class this._cls0
    implements OnWheelChangedListener
{

    final SettingsActivityMytarget this$0;

    public void onChanged(WheelView wheelview, int i, int j)
    {
        wheelview.getCurrentItem();
        if (SettingsActivityMytarget.access$800(SettingsActivityMytarget.this));
        if (SettingsActivityMytarget.access$000(SettingsActivityMytarget.this).getCurrentItem() == 0 && SettingsActivityMytarget.access$100(SettingsActivityMytarget.this).getCurrentItem() == 0 && SettingsActivityMytarget.access$200(SettingsActivityMytarget.this).getCurrentItem() <= 0)
        {
            SettingsActivityMytarget.access$200(SettingsActivityMytarget.this).setCurrentItem(1);
        }
        if (SettingsActivityMytarget.access$000(SettingsActivityMytarget.this).getCurrentItem() == 0)
        {
            SettingsActivityMytarget.access$502(SettingsActivityMytarget.this, (new StringBuilder()).append(String.valueOf(SettingsActivityMytarget.access$100(SettingsActivityMytarget.this).getCurrentItem())).append(String.valueOf((new StringBuilder()).append(SettingsActivityMytarget.access$200(SettingsActivityMytarget.this).getCurrentItem()).append(String.valueOf(SettingsActivityMytarget.access$300(SettingsActivityMytarget.this).getCurrentItem())).append(String.valueOf(SettingsActivityMytarget.access$400(SettingsActivityMytarget.this).getCurrentItem())).toString())).toString());
        } else
        {
            SettingsActivityMytarget.access$502(SettingsActivityMytarget.this, (new StringBuilder()).append(String.valueOf(SettingsActivityMytarget.access$000(SettingsActivityMytarget.this).getCurrentItem())).append(String.valueOf(SettingsActivityMytarget.access$100(SettingsActivityMytarget.this).getCurrentItem())).append(String.valueOf((new StringBuilder()).append(SettingsActivityMytarget.access$200(SettingsActivityMytarget.this).getCurrentItem()).append(String.valueOf(SettingsActivityMytarget.access$300(SettingsActivityMytarget.this).getCurrentItem())).append(String.valueOf(SettingsActivityMytarget.access$400(SettingsActivityMytarget.this).getCurrentItem())).toString())).toString());
        }
        Log.d("currentStep", (new StringBuilder()).append("currentStep--onclcik----:").append(SettingsActivityMytarget.access$500(SettingsActivityMytarget.this)).toString());
        if (wheelview == SettingsActivityMytarget.access$300(SettingsActivityMytarget.this) || wheelview == SettingsActivityMytarget.access$400(SettingsActivityMytarget.this))
        {
            return;
        } else
        {
            SettingsActivityMytarget.access$900(SettingsActivityMytarget.this, SettingsActivityMytarget.access$500(SettingsActivityMytarget.this));
            return;
        }
    }

    ()
    {
        this$0 = SettingsActivityMytarget.this;
        super();
    }
}
