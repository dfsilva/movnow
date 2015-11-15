// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.Toast;
import com.veclink.movnow_q2.adapter.HeartRateListAdapter;
import com.veclink.movnow_q2.view.CustomPopupWimdow;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealyBaseFragmentActivity, ShowHeartReateResultActivity

public class HeartRateHistoryRecordActivity extends HealyBaseFragmentActivity
    implements android.view.View.OnClickListener
{

    private HeartRateListAdapter adapter;
    private String buddy[][];
    private CustomPopupWimdow customPopupWimdow;
    private ExpandableListView exListView;
    private String group[] = {
        "2015.1(3)", "2014.12(4)", "2014.11(5)"
    };
    private Context mContext;
    private TitleBarRelativeLayout titleBarRelativeLayout;

    public HeartRateHistoryRecordActivity()
    {
        String as[] = {
            "69", "69", "69", "69", "69"
        };
        buddy = (new String[][] {
            new String[] {
                "69", "69", "69"
            }, new String[] {
                "69", "69", "69", "69"
            }, as
        });
    }

    private void initView()
    {
        mContext = this;
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBarRelativeLayout.setRightButtonListener(this);
        titleBarRelativeLayout.setRightVisisble(0);
        titleBarRelativeLayout.setRightBackground(0x7f0200a1);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c003e));
        exListView = (ExpandableListView)findViewById(0x7f060034);
        adapter = new HeartRateListAdapter(this, group, buddy);
        exListView.setAdapter(adapter);
        exListView.setOnGroupExpandListener(new android.widget.ExpandableListView.OnGroupExpandListener() {

            final HeartRateHistoryRecordActivity this$0;

            public void onGroupExpand(int i)
            {
            }

            
            {
                this$0 = HeartRateHistoryRecordActivity.this;
                super();
            }
        });
        exListView.setOnGroupCollapseListener(new android.widget.ExpandableListView.OnGroupCollapseListener() {

            final HeartRateHistoryRecordActivity this$0;

            public void onGroupCollapse(int i)
            {
            }

            
            {
                this$0 = HeartRateHistoryRecordActivity.this;
                super();
            }
        });
        exListView.setOnChildClickListener(new android.widget.ExpandableListView.OnChildClickListener() {

            final HeartRateHistoryRecordActivity this$0;

            public boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
            {
                Toast.makeText(mContext, (new StringBuilder()).append(group[i]).append(" : ").append(buddy[i][j]).toString(), 0).show();
                expandablelistview = new Intent(mContext, com/veclink/movnow_q2/activity/ShowHeartReateResultActivity);
                expandablelistview.putExtra("heart_reate", 69);
                mContext.startActivity(expandablelistview);
                return false;
            }

            
            {
                this$0 = HeartRateHistoryRecordActivity.this;
                super();
            }
        });
        exListView.expandGroup(0);
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        case 2131099794: 
        case 2131099795: 
        case 2131099796: 
        default:
            return;

        case 2131100107: 
            break;
        }
        if (customPopupWimdow == null)
        {
            customPopupWimdow = new CustomPopupWimdow(this);
        }
        customPopupWimdow.setOneBtnText(getString(0x7f0c0110));
        customPopupWimdow.setTwoBtnText(getString(0x7f0c010f));
        if (customPopupWimdow.isShowing())
        {
            customPopupWimdow.dismiss();
            return;
        } else
        {
            customPopupWimdow.showAsDropDown(view, 0, 18);
            customPopupWimdow.setOneOnclicListener(this);
            customPopupWimdow.setTwoOnclicListener(this);
            customPopupWimdow.setThreeVisisble(8);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030007);
        initView();
    }



}
