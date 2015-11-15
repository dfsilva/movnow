// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.view:
//            HistotySleepDataView, SleepHideBarGraphView

public class WeekSleepPagerItemView extends LinearLayout
{

    private HistotySleepDataView histotyDeepSleep;
    private HistotySleepDataView histotyLightSleep;
    private HistotySleepDataView histotySleepTotal;
    private LinearLayout llHistorySportCalories;
    private LinearLayout llHistorySportDistance;
    private LinearLayout llHistorySportFri;
    private LinearLayout llHistorySportMon;
    private LinearLayout llHistorySportSat;
    private LinearLayout llHistorySportSteps;
    private LinearLayout llHistorySportSun;
    private LinearLayout llHistorySportThus;
    private LinearLayout llHistorySportTues;
    private LinearLayout llHistorySportWen;
    private LinearLayout llHistoryWeek;
    private LinearLayout llHistoryWeekDetail;
    private Context mContext;
    private SleepHideBarGraphView sleepGraphHideView;
    private TextView tvFri;
    private TextView tvFriUnit;
    private TextView tvMon;
    private TextView tvMonUnit;
    private TextView tvSat;
    private TextView tvSatUnit;
    private TextView tvSleepDeep;
    private TextView tvSleepLight;
    private TextView tvSleepTotal;
    private TextView tvSun;
    private TextView tvSunUnit;
    private TextView tvThus;
    private TextView tvThusUnit;
    private TextView tvTime;
    private TextView tvTues;
    private TextView tvTuesUnit;
    private TextView tvWen;
    private TextView tvWenUnit;
    private GridView weekdayGridView;

    public WeekSleepPagerItemView(Context context)
    {
        super(context);
        mContext = context;
        initView(context);
    }

    public WeekSleepPagerItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mContext = context;
        initView(context);
    }

    public WeekSleepPagerItemView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mContext = context;
        initView(context);
    }

    private void initView(Context context)
    {
        context = LayoutInflater.from(context).inflate(0x7f030047, this);
        tvTime = (TextView)context.findViewById(0x7f0600b3);
        weekdayGridView = (GridView)context.findViewById(0x7f060088);
        histotySleepTotal = (HistotySleepDataView)context.findViewById(0x7f06010d);
        histotyDeepSleep = (HistotySleepDataView)context.findViewById(0x7f06010f);
        histotyLightSleep = (HistotySleepDataView)context.findViewById(0x7f060111);
        llHistorySportSteps = (LinearLayout)context.findViewById(0x7f06010b);
        llHistorySportSteps.setOnClickListener(new android.view.View.OnClickListener() {

            final WeekSleepPagerItemView this$0;

            public void onClick(View view)
            {
                view = AnimationUtils.loadAnimation(mContext, 0x7f04000f);
                llHistoryWeek.setVisibility(8);
                llHistoryWeekDetail.setVisibility(0);
                llHistoryWeekDetail.startAnimation(view);
            }

            
            {
                this$0 = WeekSleepPagerItemView.this;
                super();
            }
        });
        llHistorySportDistance = (LinearLayout)context.findViewById(0x7f06010e);
        llHistorySportCalories = (LinearLayout)context.findViewById(0x7f060110);
        llHistorySportMon = (LinearLayout)context.findViewById(0x7f060114);
        llHistorySportTues = (LinearLayout)context.findViewById(0x7f060117);
        llHistorySportWen = (LinearLayout)context.findViewById(0x7f06011a);
        llHistorySportThus = (LinearLayout)context.findViewById(0x7f06011d);
        llHistorySportFri = (LinearLayout)context.findViewById(0x7f060120);
        llHistorySportSat = (LinearLayout)context.findViewById(0x7f060123);
        llHistorySportSun = (LinearLayout)context.findViewById(0x7f060126);
        llHistoryWeekDetail = (LinearLayout)context.findViewById(0x7f060112);
        llHistoryWeek = (LinearLayout)context.findViewById(0x7f06010a);
        sleepGraphHideView = (SleepHideBarGraphView)context.findViewById(0x7f060113);
        tvMon = (TextView)context.findViewById(0x7f060115);
        tvTues = (TextView)context.findViewById(0x7f060118);
        tvWen = (TextView)context.findViewById(0x7f06011b);
        tvThus = (TextView)context.findViewById(0x7f06011e);
        tvFri = (TextView)context.findViewById(0x7f060121);
        tvSat = (TextView)context.findViewById(0x7f060124);
        tvSun = (TextView)context.findViewById(0x7f060127);
        tvMonUnit = (TextView)context.findViewById(0x7f060116);
        tvTuesUnit = (TextView)context.findViewById(0x7f060119);
        tvWenUnit = (TextView)context.findViewById(0x7f06011c);
        tvThusUnit = (TextView)context.findViewById(0x7f06011f);
        tvFriUnit = (TextView)context.findViewById(0x7f060122);
        tvSatUnit = (TextView)context.findViewById(0x7f060125);
        tvSunUnit = (TextView)context.findViewById(0x7f060128);
        tvSleepTotal = (TextView)context.findViewById(0x7f06010c);
        tvSleepDeep = (TextView)context.findViewById(0x7f0600bc);
        tvSleepLight = (TextView)context.findViewById(0x7f0600bd);
    }

    public HistotySleepDataView getHistotyDeepSleep()
    {
        return histotyDeepSleep;
    }

    public HistotySleepDataView getHistotyLightSleep()
    {
        return histotyLightSleep;
    }

    public HistotySleepDataView getHistotySleepTotal()
    {
        return histotySleepTotal;
    }

    public LinearLayout getLlHistorySportCalories()
    {
        return llHistorySportCalories;
    }

    public LinearLayout getLlHistorySportDistance()
    {
        return llHistorySportDistance;
    }

    public LinearLayout getLlHistorySportFri()
    {
        return llHistorySportFri;
    }

    public LinearLayout getLlHistorySportMon()
    {
        return llHistorySportMon;
    }

    public LinearLayout getLlHistorySportSat()
    {
        return llHistorySportSat;
    }

    public LinearLayout getLlHistorySportSteps()
    {
        return llHistorySportSteps;
    }

    public LinearLayout getLlHistorySportSun()
    {
        return llHistorySportSun;
    }

    public LinearLayout getLlHistorySportThus()
    {
        return llHistorySportThus;
    }

    public LinearLayout getLlHistorySportTues()
    {
        return llHistorySportTues;
    }

    public LinearLayout getLlHistorySportWen()
    {
        return llHistorySportWen;
    }

    public LinearLayout getLlHistoryWeek()
    {
        return llHistoryWeek;
    }

    public LinearLayout getLlHistoryWeekDetail()
    {
        return llHistoryWeekDetail;
    }

    public SleepHideBarGraphView getSleepGraphHideView()
    {
        return sleepGraphHideView;
    }

    public TextView getTvFri()
    {
        return tvFri;
    }

    public TextView getTvFriUnit()
    {
        return tvFriUnit;
    }

    public TextView getTvMon()
    {
        return tvMon;
    }

    public TextView getTvMonUnit()
    {
        return tvMonUnit;
    }

    public TextView getTvSat()
    {
        return tvSat;
    }

    public TextView getTvSatUnit()
    {
        return tvSatUnit;
    }

    public TextView getTvSleepDeep()
    {
        return tvSleepDeep;
    }

    public TextView getTvSleepLight()
    {
        return tvSleepLight;
    }

    public TextView getTvSleepTotal()
    {
        return tvSleepTotal;
    }

    public TextView getTvSun()
    {
        return tvSun;
    }

    public TextView getTvSunUnit()
    {
        return tvSunUnit;
    }

    public TextView getTvThus()
    {
        return tvThus;
    }

    public TextView getTvThusUnit()
    {
        return tvThusUnit;
    }

    public TextView getTvTime()
    {
        return tvTime;
    }

    public TextView getTvTues()
    {
        return tvTues;
    }

    public TextView getTvTuesUnit()
    {
        return tvTuesUnit;
    }

    public TextView getTvWen()
    {
        return tvWen;
    }

    public TextView getTvWenUnit()
    {
        return tvWenUnit;
    }

    public GridView getWeekdayGridView()
    {
        return weekdayGridView;
    }

    public void setHistotyDeepSleep(HistotySleepDataView histotysleepdataview)
    {
        histotyDeepSleep = histotysleepdataview;
    }

    public void setHistotyLightSleep(HistotySleepDataView histotysleepdataview)
    {
        histotyLightSleep = histotysleepdataview;
    }

    public void setHistotySleepTotal(HistotySleepDataView histotysleepdataview)
    {
        histotySleepTotal = histotysleepdataview;
    }

    public void setLlHistorySportCalories(LinearLayout linearlayout)
    {
        llHistorySportCalories = linearlayout;
    }

    public void setLlHistorySportDistance(LinearLayout linearlayout)
    {
        llHistorySportDistance = linearlayout;
    }

    public void setLlHistorySportFri(LinearLayout linearlayout)
    {
        llHistorySportFri = linearlayout;
    }

    public void setLlHistorySportMon(LinearLayout linearlayout)
    {
        llHistorySportMon = linearlayout;
    }

    public void setLlHistorySportSat(LinearLayout linearlayout)
    {
        llHistorySportSat = linearlayout;
    }

    public void setLlHistorySportSteps(LinearLayout linearlayout)
    {
        llHistorySportSteps = linearlayout;
    }

    public void setLlHistorySportSun(LinearLayout linearlayout)
    {
        llHistorySportSun = linearlayout;
    }

    public void setLlHistorySportThus(LinearLayout linearlayout)
    {
        llHistorySportThus = linearlayout;
    }

    public void setLlHistorySportTues(LinearLayout linearlayout)
    {
        llHistorySportTues = linearlayout;
    }

    public void setLlHistorySportWen(LinearLayout linearlayout)
    {
        llHistorySportWen = linearlayout;
    }

    public void setLlHistoryWeek(LinearLayout linearlayout)
    {
        llHistoryWeek = linearlayout;
    }

    public void setLlHistoryWeekDetail(LinearLayout linearlayout)
    {
        llHistoryWeekDetail = linearlayout;
    }

    public void setSleepGraphHideView(SleepHideBarGraphView sleephidebargraphview)
    {
        sleepGraphHideView = sleephidebargraphview;
    }

    public void setTvFri(TextView textview)
    {
        tvFri = textview;
    }

    public void setTvFriUnit(TextView textview)
    {
        tvFriUnit = textview;
    }

    public void setTvMon(TextView textview)
    {
        tvMon = textview;
    }

    public void setTvMonUnit(TextView textview)
    {
        tvMonUnit = textview;
    }

    public void setTvSat(TextView textview)
    {
        tvSat = textview;
    }

    public void setTvSatUnit(TextView textview)
    {
        tvSatUnit = textview;
    }

    public void setTvSleepDeep(TextView textview)
    {
        tvSleepDeep = textview;
    }

    public void setTvSleepLight(TextView textview)
    {
        tvSleepLight = textview;
    }

    public void setTvSleepTotal(TextView textview)
    {
        tvSleepTotal = textview;
    }

    public void setTvSun(TextView textview)
    {
        tvSun = textview;
    }

    public void setTvSunUnit(TextView textview)
    {
        tvSunUnit = textview;
    }

    public void setTvThus(TextView textview)
    {
        tvThus = textview;
    }

    public void setTvThusUnit(TextView textview)
    {
        tvThusUnit = textview;
    }

    public void setTvTime(TextView textview)
    {
        tvTime = textview;
    }

    public void setTvTues(TextView textview)
    {
        tvTues = textview;
    }

    public void setTvTuesUnit(TextView textview)
    {
        tvTuesUnit = textview;
    }

    public void setTvWen(TextView textview)
    {
        tvWen = textview;
    }

    public void setTvWenUnit(TextView textview)
    {
        tvWenUnit = textview;
    }

    public void setWeekdayGridView(GridView gridview)
    {
        weekdayGridView = gridview;
    }



}
