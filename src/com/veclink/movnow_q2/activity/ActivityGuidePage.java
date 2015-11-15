// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.movnow_q2.util.LanguageUtil;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, LoginActivity

public class ActivityGuidePage extends HealthyBaseActivity
{
    class ViewPagerAdapter extends PagerAdapter
    {

        private List data;
        final ActivityGuidePage this$0;

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
            viewgroup.removeView((View)data.get(i));
        }

        public int getCount()
        {
            return data.size();
        }

        public Object instantiateItem(ViewGroup viewgroup, int i)
        {
            viewgroup.addView((View)data.get(i));
            return data.get(i);
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            return view == obj;
        }

        public ViewPagerAdapter(List list)
        {
            this$0 = ActivityGuidePage.this;
            super();
            data = list;
        }
    }


    private static final String SHAREDPREFERENCES_NAME = "first_pref";
    boolean isFirstIn;
    private TextView mBtn;
    private LinearLayout mDotsLayout;
    private ViewPager mPager;
    private List viewList;

    public ActivityGuidePage()
    {
        isFirstIn = false;
    }

    private View initDot()
    {
        return LayoutInflater.from(getApplicationContext()).inflate(0x7f030042, null);
    }

    private void initDots(int i)
    {
        for (int j = 0; j < i; j++)
        {
            mDotsLayout.addView(initDot());
        }

        mDotsLayout.getChildAt(0).setSelected(true);
    }

    private void initPager()
    {
        viewList = new ArrayList();
        int ai[];
        int i;
        if (LanguageUtil.isChina())
        {
            ai = new int[3];
            int[] _tmp = ai;
            ai[0] = 0x7f020068;
            ai[1] = 0x7f020069;
            ai[2] = 0x7f02006a;
        } else
        if (LanguageUtil.isRuuna())
        {
            ai = new int[3];
            int[] _tmp1 = ai;
            ai[0] = 0x7f02006e;
            ai[1] = 0x7f02006f;
            ai[2] = 0x7f020070;
        } else
        {
            ai = new int[3];
            int[] _tmp2 = ai;
            ai[0] = 0x7f02006b;
            ai[1] = 0x7f02006c;
            ai[2] = 0x7f02006d;
        }
        for (i = 0; i < ai.length; i++)
        {
            viewList.add(initView(ai[i]));
        }

        initDots(ai.length);
    }

    private View initView(int i)
    {
        View view = LayoutInflater.from(getApplicationContext()).inflate(0x7f030041, null);
        ((LinearLayout)view.findViewById(0x7f060100)).setBackgroundResource(i);
        return view;
    }

    private void openHome()
    {
        startActivity(new Intent(this, com/veclink/movnow_q2/activity/LoginActivity));
        finish();
    }

    private void setGuided()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences("first_pref", 0).edit();
        editor.putBoolean("isFirstIn", false);
        editor.commit();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030006);
        mPager = (ViewPager)findViewById(0x7f06002f);
        mDotsLayout = (LinearLayout)findViewById(0x7f060031);
        mBtn = (TextView)findViewById(0x7f060030);
        if (LanguageUtil.isChina())
        {
            mBtn.setBackgroundResource(0x7f020155);
        } else
        if (LanguageUtil.isEnglish())
        {
            mBtn.setBackgroundResource(0x7f020158);
        } else
        {
            mBtn.setBackgroundResource(0x7f02018f);
            mBtn.setText(getString(0x7f0c0070));
        }
        initPager();
        mPager.setAdapter(new ViewPagerAdapter(viewList));
        isFirstIn = getSharedPreferences("first_pref", 0).getBoolean("isFirstIn", true);
        mPager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final ActivityGuidePage this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                int j = 0;
                while (j < mDotsLayout.getChildCount()) 
                {
                    if (j == i)
                    {
                        mDotsLayout.getChildAt(j).setSelected(true);
                    } else
                    {
                        mDotsLayout.getChildAt(j).setSelected(false);
                    }
                    j++;
                }
                if (i == mDotsLayout.getChildCount() - 1)
                {
                    if (isFirstIn)
                    {
                        mBtn.setVisibility(0);
                        return;
                    } else
                    {
                        mBtn.setVisibility(8);
                        return;
                    }
                } else
                {
                    mBtn.setVisibility(8);
                    return;
                }
            }

            
            {
                this$0 = ActivityGuidePage.this;
                super();
            }
        });
        mBtn.setOnClickListener(new android.view.View.OnClickListener() {

            final ActivityGuidePage this$0;

            public void onClick(View view)
            {
                setGuided();
                openHome();
            }

            
            {
                this$0 = ActivityGuidePage.this;
                super();
            }
        });
    }




}
