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
//            MainActivity, GuideIntroduceActivity, FirmwareUpdateActivity

class this._cls0 extends Handler
{

    final MainActivity this$0;

    public void handleMessage(final Message dialog)
    {
        if (dialog.what == 0)
        {
            dialog = new Intent();
            dialog.setClass(MainActivity.this, com/veclink/movnow_q2/activity/GuideIntroduceActivity);
            startActivity(dialog);
            MainActivity.access$000(MainActivity.this);
        } else
        if (dialog.what == 1)
        {
            dialog = new BaseRemindDialog(MainActivity.mainActivity);
            dialog.setOkBtnText(getString(0x7f0c0129));
            dialog.setContent(getString(0x7f0c018b));
            dialog.setOkListener(new android.view.View.OnClickListener() {

                final MainActivity._cls1 this$1;
                final BaseRemindDialog val$dialog;

                public void onClick(View view)
                {
                    dialog.dismiss();
                    view = new Intent(MainActivity.mainActivity, com/veclink/movnow_q2/activity/FirmwareUpdateActivity);
                    startActivity(view);
                }

            
            {
                this$1 = MainActivity._cls1.this;
                dialog = basereminddialog;
                super();
            }
            });
            dialog.show();
            return;
        }
    }

    _cls1.val.dialog()
    {
        this$0 = MainActivity.this;
        super();
    }
}
