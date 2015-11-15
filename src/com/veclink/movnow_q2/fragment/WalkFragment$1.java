// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.view.SportGraphHideView;
import com.veclink.movnow_q2.view.SportGraphView;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WalkFragment

class this._cls0 extends Handler
{

    final WalkFragment this$0;

    public void handleMessage(Message message)
    {
        if (!WalkFragment.access$000(WalkFragment.this)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            WalkFragment.access$102(WalkFragment.this, ((Integer)SharedPreferencesUtils.getSharedPreferences(application, (new StringBuilder()).append(Keeper.getDeviceId(application)).append(DateTimeUtil.getDateStringByDate(new Date())).append("tempStepCount").toString(), Integer.valueOf(0))).intValue());
            int j = ((Integer)message.obj).intValue();
            int i = j;
            if (WalkFragment.access$100(WalkFragment.this) > j)
            {
                i = WalkFragment.access$100(WalkFragment.this);
            }
            WalkFragment.access$200(WalkFragment.this, i);
            return;

        case 1: // '\001'
            message = (List)message.obj;
            WalkFragment.access$300(WalkFragment.this).setDataInfo(message);
            WalkFragment.access$300(WalkFragment.this).invalidate();
            WalkFragment.access$500(WalkFragment.this).setDataInfo(message, WalkFragment.access$400(WalkFragment.this));
            WalkFragment.access$500(WalkFragment.this).invalidate();
            return;

        case 2: // '\002'
            WalkFragment.access$102(WalkFragment.this, ((Integer)message.obj).intValue());
            SharedPreferencesUtils.setSharedPreferences(application, (new StringBuilder()).append(Keeper.getDeviceId(application)).append(DateTimeUtil.getDateStringByDate(new Date())).append("tempStepCount").toString(), Integer.valueOf(WalkFragment.access$100(WalkFragment.this)));
            WalkFragment.access$200(WalkFragment.this, WalkFragment.access$100(WalkFragment.this));
            return;

        case 3: // '\003'
            WalkFragment.access$600(WalkFragment.this).setText((new StringBuilder()).append(String.valueOf(message.obj)).append("%").toString());
            return;

        case 4: // '\004'
            if (!TextUtils.isEmpty(Keeper.getBindDeviceMacAddress(application)))
            {
                WalkFragment.access$700(WalkFragment.this).setVisibility(0);
                WalkFragment.access$800(WalkFragment.this).setText(0x7f0c0185);
                WalkFragment.access$900(WalkFragment.this).setVisibility(8);
                return;
            }
            break;

        case 5: // '\005'
            WalkFragment.access$700(WalkFragment.this).setVisibility(8);
            WalkFragment.access$900(WalkFragment.this).setVisibility(0);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    ils()
    {
        this$0 = WalkFragment.this;
        super();
    }
}
