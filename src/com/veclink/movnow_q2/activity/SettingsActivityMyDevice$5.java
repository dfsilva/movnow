// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.devicetype.DeviceProductFactory;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import com.veclink.movnow_q2.view.SettingsItemView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMyDevice, MovnowTwoApplication, MainActivity

class val.dialog
    implements android.view.ctivityMyDevice._cls5
{

    final SettingsActivityMyDevice this$0;
    final BaseRemindDialog val$dialog;

    public void onClick(View view)
    {
        val$dialog.dismiss();
        VLBleServiceManager.getInstance().unBindService(getApplication());
        HealthyAccountHolder.unBindDevice(SettingsActivityMyDevice.access$900(SettingsActivityMyDevice.this));
        SettingsActivityMyDevice.access$1000(SettingsActivityMyDevice.this).setRightText("");
        SettingsActivityMyDevice.access$800(SettingsActivityMyDevice.this).setRightText("");
        MovnowTwoApplication.deviceProduct = DeviceProductFactory.createDeviceProduct("");
        SettingsActivityMyDevice.access$1100(SettingsActivityMyDevice.this);
        view = (MovnowTwoApplication)getApplication();
        view.setHasSyncSleepData(false);
        view.setHasSyncStepData(false);
        MovnowTwoApplication.stopPlayRing();
        MovnowTwoApplication.cancelAllRemind();
        SettingsActivityMyDevice.access$1000(SettingsActivityMyDevice.this).setLeftText(getString(0x7f0c00cb));
        StorageUtil.delteAllRemindObject(SettingsActivityMyDevice.access$900(SettingsActivityMyDevice.this));
        MainActivity.mainActivity.finish();
    }

    ()
    {
        this$0 = final_settingsactivitymydevice;
        val$dialog = BaseRemindDialog.this;
        super();
    }
}
