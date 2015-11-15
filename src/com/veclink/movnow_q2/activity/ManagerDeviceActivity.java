// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListView;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.adapter.DeviceListAdapter;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class ManagerDeviceActivity extends HealthyBaseActivity
{

    DeviceListAdapter adapter;
    List deviceList;
    ListView listView;
    Context mContext;
    TitleBarRelativeLayout titleBar;

    public ManagerDeviceActivity()
    {
    }

    private void initView()
    {
        mContext = this;
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060017);
        titleBar.setTitleText(getString(0x7f0c010b));
        listView = (ListView)findViewById(0x7f060046);
        deviceList = new ArrayList();
        if (!Keeper.getDeviceId(mContext).equals(""))
        {
            deviceList.add(Keeper.getDeviceId(mContext));
        }
        adapter = new DeviceListAdapter(deviceList, this);
        listView.setAdapter(adapter);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000c);
        initView();
    }
}
