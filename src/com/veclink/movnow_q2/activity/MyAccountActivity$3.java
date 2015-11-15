// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.movnow_q2.view.TakePhotoDialogProxy;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MyAccountActivity

class this._cls0
    implements android.view.
{

    final MyAccountActivity this$0;

    public void onClick(View view)
    {
        MyAccountActivity.access$302(MyAccountActivity.this, new TakePhotoDialogProxy(MyAccountActivity.this, MyAccountActivity.access$400(MyAccountActivity.this)));
        MyAccountActivity.access$300(MyAccountActivity.this).setExtendHandler(MyAccountActivity.access$500(MyAccountActivity.this));
        MyAccountActivity.access$300(MyAccountActivity.this).show();
    }

    ()
    {
        this$0 = MyAccountActivity.this;
        super();
    }
}
