// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.veclink.movnow_q2.view:
//            TakePhotoDialogProxy

class this._cls0 extends Handler
{

    final TakePhotoDialogProxy this$0;

    public void handleMessage(Message message)
    {
        if (!TakePhotoDialogProxy.access$100(TakePhotoDialogProxy.this).equals(""))
        {
            if (TakePhotoDialogProxy.access$200(TakePhotoDialogProxy.this) != null)
            {
                TakePhotoDialogProxy.access$200(TakePhotoDialogProxy.this).recycle();
            }
            TakePhotoDialogProxy.access$202(TakePhotoDialogProxy.this, BitmapFactory.decodeFile(TakePhotoDialogProxy.access$100(TakePhotoDialogProxy.this)));
            if (TakePhotoDialogProxy.access$200(TakePhotoDialogProxy.this) != null)
            {
                if (TakePhotoDialogProxy.access$300(TakePhotoDialogProxy.this) != null)
                {
                    TakePhotoDialogProxy.access$300(TakePhotoDialogProxy.this).sendMessage(new Message());
                }
                TakePhotoDialogProxy.access$200(TakePhotoDialogProxy.this).recycle();
            }
        }
    }

    ()
    {
        this$0 = TakePhotoDialogProxy.this;
        super();
    }
}
