// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.view.View;

// Referenced classes of package com.veclink.movnow_q2.view:
//            TakePhotoDialogProxy, TakePhotoDialog

class this._cls0
    implements android.view.DialogProxy._cls2
{

    final TakePhotoDialogProxy this$0;

    public void onClick(View view)
    {
        btnLocalPic();
        TakePhotoDialogProxy.access$000(TakePhotoDialogProxy.this).dismiss();
    }

    ()
    {
        this$0 = TakePhotoDialogProxy.this;
        super();
    }
}
