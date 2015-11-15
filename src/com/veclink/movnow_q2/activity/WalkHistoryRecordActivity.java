// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.veclink.movnow_q2.fragment.MonthWalkFragment;
import com.veclink.movnow_q2.fragment.WeekWalkFragment;
import com.veclink.movnow_q2.view.CustomPopupWimdow;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.calendar.CaldroidFragment;
import com.veclink.movnow_q2.view.calendar.CaldroidListener;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealyBaseFragmentActivity, WalkDateHistoryRecordActivity

public class WalkHistoryRecordActivity extends HealyBaseFragmentActivity
    implements android.view.View.OnClickListener
{

    private CaldroidFragment caldroidFragment;
    private CustomPopupWimdow customPopupWimdow;
    private MonthWalkFragment monthWalkFragment;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private WeekWalkFragment weekWalkFragment;

    public WalkHistoryRecordActivity()
    {
    }

    private void hideFragments(FragmentTransaction fragmenttransaction)
    {
        if (caldroidFragment != null)
        {
            fragmenttransaction.hide(caldroidFragment);
        }
        if (weekWalkFragment != null)
        {
            fragmenttransaction.hide(weekWalkFragment);
        }
        if (monthWalkFragment != null)
        {
            fragmenttransaction.hide(monthWalkFragment);
        }
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBarRelativeLayout.setRightButtonListener(this);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c003e));
        titleBarRelativeLayout.setRightBackground(0x7f0200a1);
        titleBarRelativeLayout.setRightVisisble(0);
    }

    private void showCurrentFragment(int i)
    {
        FragmentTransaction fragmenttransaction;
        fragmenttransaction = getSupportFragmentManager().beginTransaction();
        hideFragments(fragmenttransaction);
        i;
        JVM INSTR tableswitch 0 2: default 40
    //                   0 46
    //                   1 168
    //                   2 193;
           goto _L1 _L2 _L3 _L4
_L1:
        fragmenttransaction.commit();
        return;
_L2:
        CaldroidListener caldroidlistener;
        if (caldroidFragment == null)
        {
            caldroidFragment = new CaldroidFragment();
            fragmenttransaction.add(0x7f06006a, caldroidFragment);
            Bundle bundle = new Bundle();
            Calendar calendar = Calendar.getInstance();
            bundle.putInt("month", calendar.get(2) + 1);
            bundle.putInt("year", calendar.get(1));
            bundle.putBoolean("enableSwipe", true);
            bundle.putBoolean("sixWeeksInCalendar", true);
            caldroidFragment.setArguments(bundle);
        } else
        {
            fragmenttransaction.show(caldroidFragment);
        }
        caldroidlistener = new CaldroidListener() {

            final WalkHistoryRecordActivity this$0;

            public void onCaldroidViewCreated()
            {
            }

            public void onChangeMonth(int j, int k)
            {
            }

            public void onLongClickDate(Date date, View view)
            {
            }

            public void onSelectDate(Date date, View view)
            {
                date.getMonth();
                WalkDateHistoryRecordActivity.launchActivity(WalkHistoryRecordActivity.this, date);
            }

            
            {
                this$0 = WalkHistoryRecordActivity.this;
                super();
            }
        };
        caldroidFragment.setCaldroidListener(caldroidlistener);
        continue; /* Loop/switch isn't completed */
_L3:
        weekWalkFragment = new WeekWalkFragment();
        fragmenttransaction.add(0x7f06006a, weekWalkFragment);
        continue; /* Loop/switch isn't completed */
_L4:
        if (monthWalkFragment == null)
        {
            monthWalkFragment = new MonthWalkFragment();
            fragmenttransaction.add(0x7f06006a, monthWalkFragment);
        } else
        {
            fragmenttransaction.show(monthWalkFragment);
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 4: default 48
    //                   2131099794: 114
    //                   2131099795: 137
    //                   2131099796: 160
    //                   2131100107: 49;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L5:
        customPopupWimdow = new CustomPopupWimdow(this);
        if (customPopupWimdow.isShowing())
        {
            customPopupWimdow.dismiss();
            return;
        } else
        {
            customPopupWimdow.showAsDropDown(view, 0, 0);
            customPopupWimdow.setOneOnclicListener(this);
            customPopupWimdow.setTwoOnclicListener(this);
            customPopupWimdow.setThreeOnclicListener(this);
            return;
        }
_L2:
        showCurrentFragment(0);
        if (customPopupWimdow.isShowing())
        {
            customPopupWimdow.dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        showCurrentFragment(1);
        if (customPopupWimdow.isShowing())
        {
            customPopupWimdow.dismiss();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
        showCurrentFragment(2);
        if (customPopupWimdow.isShowing())
        {
            customPopupWimdow.dismiss();
            return;
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030019);
        initView();
        showCurrentFragment(1);
    }

    protected void onResume()
    {
        super.onResume();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (caldroidFragment != null)
        {
            caldroidFragment.saveStatesToKey(bundle, "CALDROID_SAVED_STATE");
        }
    }
}
