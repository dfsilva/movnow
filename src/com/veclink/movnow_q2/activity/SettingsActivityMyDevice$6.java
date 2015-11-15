// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.healthy.business.http.pojo.DeleteBraceleteDataReponse;
import com.veclink.healthy.business.http.session.HealthyDeleteDataSession;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import de.greenrobot.event.EventBus;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMyDevice

class val.resetdialog
    implements android.view.ctivityMyDevice._cls6
{

    final SettingsActivityMyDevice this$0;
    final BaseRemindDialog val$resetdialog;

    public void onClick(View view)
    {
        val$resetdialog.dismiss();
        EventBus.getDefault().unregister(SettingsActivityMyDevice.this, new Class[] {
            com/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse
        });
        EventBus.getDefault().register(SettingsActivityMyDevice.this, com/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse, new Class[0]);
        view = new HealthyDeleteDataSession(SettingsActivityMyDevice.this);
        SimpleHttpSchedualer.ansycSchedual(SettingsActivityMyDevice.this, view);
    }

    aSession()
    {
        this$0 = final_settingsactivitymydevice;
        val$resetdialog = BaseRemindDialog.this;
        super();
    }
}
