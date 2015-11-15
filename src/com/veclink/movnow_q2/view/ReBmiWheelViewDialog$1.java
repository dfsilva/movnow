// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.view:
//            ReBmiWheelViewDialog

class this._cls0
    implements android.view.lViewDialog._cls1
{

    final ReBmiWheelViewDialog this$0;

    public void onClick(View view)
    {
        view = saveResult();
        if (view.equals(""))
        {
            return;
        } else
        {
            show_result_view.setText(view);
            dismiss();
            return;
        }
    }

    ()
    {
        this$0 = ReBmiWheelViewDialog.this;
        super();
    }
}
