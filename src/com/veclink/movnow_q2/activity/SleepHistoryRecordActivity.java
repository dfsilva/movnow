// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.veclink.movnow_q2.fragment.WeekSleepFragment;
import com.veclink.movnow_q2.view.CustomPopupWimdow;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.calendar.CaldroidFragment;
import com.veclink.movnow_q2.view.calendar.CaldroidListener;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealyBaseFragmentActivity, SleepDateHistoryRecordActivity

public class SleepHistoryRecordActivity extends HealyBaseFragmentActivity
    implements android.view.View.OnClickListener
{

    private CaldroidFragment caldroidFragment;
    private CustomPopupWimdow customPopupWimdow;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private WeekSleepFragment weekSleepFragment;

    public SleepHistoryRecordActivity()
    {
    }

    private void hideFragments(FragmentTransaction fragmenttransaction)
    {
        if (caldroidFragment != null)
        {
            fragmenttransaction.hide(caldroidFragment);
        }
        if (weekSleepFragment != null)
        {
            fragmenttransaction.hide(weekSleepFragment);
        }
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBarRelativeLayout.setRightButtonListener(this);
        titleBarRelativeLayout.setRightVisisble(0);
        titleBarRelativeLayout.setRightBackground(0x7f0200a1);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c003e));
    }

    private void showCurrentFragment(int i)
    {
        FragmentTransaction fragmenttransaction;
        fragmenttransaction = getSupportFragmentManager().beginTransaction();
        hideFragments(fragmenttransaction);
        i;
        JVM INSTR tableswitch 0 1: default 36
    //                   0 42
    //                   1 191;
           goto _L1 _L2 _L3
_L1:
        fragmenttransaction.commit();
        return;
_L2:
        new SimpleDateFormat("yyyy-MM");
        new SimpleDateFormat("dd");
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
            bundle.putBoolean("issleepdata", true);
            caldroidFragment.setArguments(bundle);
        } else
        {
            fragmenttransaction.show(caldroidFragment);
        }
        caldroidlistener = new CaldroidListener() {

            final SleepHistoryRecordActivity this$0;

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
                SleepDateHistoryRecordActivity.launchActivity(SleepHistoryRecordActivity.this, date);
            }

            
            {
                this$0 = SleepHistoryRecordActivity.this;
                super();
            }
        };
        caldroidFragment.setCaldroidListener(caldroidlistener);
        continue; /* Loop/switch isn't completed */
_L3:
        if (weekSleepFragment == null)
        {
            weekSleepFragment = new WeekSleepFragment();
            fragmenttransaction.add(0x7f06006a, weekSleepFragment);
        } else
        {
            fragmenttransaction.show(weekSleepFragment);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 4: default 48
    //                   2131099794: 122
    //                   2131099795: 145
    //                   2131099796: 168
    //                   2131100107: 49;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L5:
        if (customPopupWimdow == null)
        {
            customPopupWimdow = new CustomPopupWimdow(this);
        }
        if (customPopupWimdow.isShowing())
        {
            customPopupWimdow.dismiss();
            return;
        } else
        {
            customPopupWimdow.showAsDropDown(view, 0, 0);
            customPopupWimdow.setOneOnclicListener(this);
            customPopupWimdow.setTwoOnclicListener(this);
            customPopupWimdow.setThreeVisisble(8);
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
        setContentView(0x7f030016);
        initView();
        showCurrentFragment(1);
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
