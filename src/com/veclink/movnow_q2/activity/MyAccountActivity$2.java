// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import com.veclink.healthy.business.http.pojo.GetUploadTokenResponse;
import com.veclink.healthy.business.http.session.HealthyGetUploadTokenSession;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.view.WaitDialogUtil;
import de.greenrobot.event.EventBus;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MyAccountActivity

class this._cls0 extends Handler
{

    final MyAccountActivity this$0;

    public void handleMessage(Message message)
    {
        MyAccountActivity.access$102(MyAccountActivity.this, new WaitDialogUtil(MyAccountActivity.access$200(MyAccountActivity.this)));
        MyAccountActivity.access$100(MyAccountActivity.this).setMessage(getString(0x7f0c018d));
        MyAccountActivity.access$100(MyAccountActivity.this).showDialog();
        EventBus.getDefault().unregister(MyAccountActivity.access$200(MyAccountActivity.this), new Class[] {
            com/veclink/healthy/business/http/pojo/GetUploadTokenResponse
        });
        EventBus.getDefault().register(MyAccountActivity.access$200(MyAccountActivity.this), com/veclink/healthy/business/http/pojo/GetUploadTokenResponse, new Class[0]);
        message = new HealthyGetUploadTokenSession(MyAccountActivity.access$200(MyAccountActivity.this));
        SimpleHttpSchedualer.ansycSchedual(MyAccountActivity.access$200(MyAccountActivity.this), message);
    }

    aler()
    {
        this$0 = MyAccountActivity.this;
        super();
    }
}
