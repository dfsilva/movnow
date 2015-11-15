// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.movnow_q2.util.LanguageUtil;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class GuideIntroduceActivity extends HealthyBaseActivity
{
    class ViewPagerAdapter extends PagerAdapter
    {

        private List data;
        final GuideIntroduceActivity this$0;

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
            this$0 = GuideIntroduceActivity.this;
            super();
            data = list;
        }
    }


    boolean isFirstIn;
    private TextView mBtn;
    private ViewPager mPager;
    private List viewList;

    public GuideIntroduceActivity()
    {
        isFirstIn = false;
    }

    private void initPager()
    {
        viewList = new ArrayList();
        int ai[];
        int i;
        if (LanguageUtil.isChina())
        {
            ai = new int[5];
            int[] _tmp = ai;
            ai[0] = 0x7f0200a9;
            ai[1] = 0x7f0200aa;
            ai[2] = 0x7f0200ab;
            ai[3] = 0x7f0200ac;
            ai[4] = 0x7f0200ad;
        } else
        if (LanguageUtil.isSpanish())
        {
            ai = new int[5];
            int[] _tmp1 = ai;
            ai[0] = 0x7f0200b3;
            ai[1] = 0x7f0200b4;
            ai[2] = 0x7f0200b5;
            ai[3] = 0x7f0200b6;
            ai[4] = 0x7f0200b7;
        } else
        if (LanguageUtil.isTR())
        {
            ai = new int[5];
            int[] _tmp2 = ai;
            ai[0] = 0x7f0200b8;
            ai[1] = 0x7f0200b9;
            ai[2] = 0x7f0200ba;
            ai[3] = 0x7f0200bb;
            ai[4] = 0x7f0200bc;
        } else
        {
            ai = new int[5];
            int[] _tmp3 = ai;
            ai[0] = 0x7f0200ae;
            ai[1] = 0x7f0200af;
            ai[2] = 0x7f0200b0;
            ai[3] = 0x7f0200b1;
            ai[4] = 0x7f0200b2;
        }
        for (i = 0; i < ai.length; i++)
        {
            viewList.add(initView(ai[i]));
        }

    }

    private View initView(int i)
    {
        View view = LayoutInflater.from(getApplicationContext()).inflate(0x7f030041, null);
        LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f060100);
        ImageView imageview = (ImageView)view.findViewById(0x7f060101);
        linearlayout.setBackgroundResource(i);
        return view;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030005);
        mPager = (ViewPager)findViewById(0x7f06002f);
        mBtn = (TextView)findViewById(0x7f060030);
        if (LanguageUtil.isChina())
        {
            mBtn.setBackgroundResource(0x7f0200a5);
        } else
        if (LanguageUtil.isSpanish())
        {
            mBtn.setBackgroundResource(0x7f0200a7);
        } else
        if (LanguageUtil.isTR())
        {
            mBtn.setBackgroundResource(0x7f0200a8);
        } else
        {
            mBtn.setBackgroundResource(0x7f0200a6);
        }
        initPager();
        mPager.setAdapter(new ViewPagerAdapter(viewList));
        mPager.setCurrentItem(0);
        mPager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final GuideIntroduceActivity this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                if (i == 0)
                {
                    mBtn.setVisibility(0);
                    return;
                } else
                {
                    mBtn.setVisibility(8);
                    return;
                }
            }

            
            {
                this$0 = GuideIntroduceActivity.this;
                super();
            }
        });
        mBtn.setOnClickListener(new android.view.View.OnClickListener() {

            final GuideIntroduceActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = GuideIntroduceActivity.this;
                super();
            }
        });
    }

}
