// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.veclink.movnow_q2.view.BaseRemindDialog;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MainActivity, FirmwareUpdateActivity, GuideIntroduceActivity

class val.dialog
    implements android.view.ner
{

    final tActivity this$1;
    final BaseRemindDialog val$dialog;

    public void onClick(View view)
    {
        val$dialog.dismiss();
        view = new Intent(MainActivity.mainActivity, com/veclink/movnow_q2/activity/FirmwareUpdateActivity);
        startActivity(view);
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$dialog = BaseRemindDialog.this;
        super();
    }

    // Unreferenced inner class com/veclink/movnow_q2/activity/MainActivity$1

/* anonymous class */
    class MainActivity._cls1 extends Handler
    {

        final MainActivity this$0;

        public void handleMessage(Message message)
        {
            if (message.what == 0)
            {
                message = new Intent();
                message.setClass(MainActivity.this, com/veclink/movnow_q2/activity/GuideIntroduceActivity);
                startActivity(message);
                MainActivity.access$000(MainActivity.this);
            } else
            if (message.what == 1)
            {
                message = new BaseRemindDialog(MainActivity.mainActivity);
                message.setOkBtnText(getString(0x7f0c0129));
                message.setContent(getString(0x7f0c018b));
                message.setOkListener(message. new MainActivity._cls1._cls1());
                message.show();
                return;
            }
        }

            
            {
                this$0 = MainActivity.this;
                super();
            }
    }

}
