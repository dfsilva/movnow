// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import android.widget.TextView;
import com.veclink.movnow_q2.view.ReBmiWheelViewDialog;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MyAccountActivity

class this._cls0
    implements android.view.
{

    final MyAccountActivity this$0;

    public void onClick(View view)
    {
        view = reBmiWheelViewDialog.saveResult();
        if (view.equals(""))
        {
            return;
        } else
        {
            reBmiWheelViewDialog.show_result_view.setText(view);
            reBmiWheelViewDialog.dismiss();
            MyAccountActivity.access$000(MyAccountActivity.this);
            return;
        }
    }

    ()
    {
        this$0 = MyAccountActivity.this;
        super();
    }
}
