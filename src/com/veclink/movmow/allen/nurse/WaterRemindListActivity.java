// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.veclink.movmow.allen.nurse.adapter.WaterRemindListAdapter;
import com.veclink.movnow_q2.activity.HealthyBaseActivity;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            AddOrEditWaterClockActivity

public class WaterRemindListActivity extends HealthyBaseActivity
{

    private WaterRemindListAdapter adapter;
    private ListView listView;
    private Context mContext;
    private TitleBarRelativeLayout titleBar;

    public WaterRemindListActivity()
    {
    }

    private void initView()
    {
        mContext = this;
        listView = (ListView)findViewById(0x7f060073);
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060017);
        titleBar.setTitleText(mContext.getString(0x7f0c00ec));
        titleBar.setRightVisisble(0);
        titleBar.setRightBackground(0x7f020022);
        titleBar.setRightButtonListener(new android.view.View.OnClickListener() {

            final WaterRemindListActivity this$0;

            public void onClick(View view)
            {
                if (adapter.remindList != null && adapter.remindList.size() >= 5)
                {
                    ToastUtil.showTextToast(mContext, getString(0x7f0c0179));
                    return;
                } else
                {
                    view = new Intent(mContext, com/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity);
                    startActivity(view);
                    return;
                }
            }

            
            {
                this$0 = WaterRemindListActivity.this;
                super();
            }
        });
    }

    private void setData()
    {
        adapter = new WaterRemindListAdapter(this);
        listView.setAdapter(adapter);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001f);
        initView();
    }

    protected void onResume()
    {
        super.onResume();
        setData();
    }


}
