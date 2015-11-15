// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            ManagerCaloriesActivity, AddCaloriesActivity

class this._cls0 extends Handler
{

    final ManagerCaloriesActivity this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1004 1004: default 24
    //                   1004 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        message = (Bitmap)message.obj;
        Log.d("imgUrl", (new StringBuilder()).append("imgUrl--------:").append(ManagerCaloriesActivity.access$000(ManagerCaloriesActivity.this)).toString());
        if (!TextUtils.isEmpty(ManagerCaloriesActivity.access$000(ManagerCaloriesActivity.this)))
        {
            message = new Intent(mContext, com/veclink/movnow_q2/activity/AddCaloriesActivity);
            message.putExtra("imgUrl", ManagerCaloriesActivity.access$000(ManagerCaloriesActivity.this));
            startActivity(message);
            finish();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    ()
    {
        this$0 = ManagerCaloriesActivity.this;
        super();
    }
}
