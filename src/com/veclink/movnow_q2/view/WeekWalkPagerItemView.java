// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;

// Referenced classes of package com.veclink.movnow_q2.view:
//            HistotySportGraphView, SportGraphHideView

public class WeekWalkPagerItemView extends LinearLayout
{

    private HistotySportGraphView histotySportCaloriesView;
    private HistotySportGraphView histotySportDistanceView;
    private HistotySportGraphView histotySportStepView;
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
    private SportGraphHideView sportGraphHideView;
    private TextView tvDistanceAccount;
    private TextView tvDistancesUint;
    private TextView tvFri;
    private TextView tvFriUnit;
    private TextView tvKclaAccount;
    private TextView tvMon;
    private TextView tvMonUnit;
    private TextView tvSat;
    private TextView tvSatUnit;
    private TextView tvStepAccount;
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

    public WeekWalkPagerItemView(Context context)
    {
        super(context);
        mContext = context;
        initView(context);
    }

    public WeekWalkPagerItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mContext = context;
        initView(context);
    }

    public WeekWalkPagerItemView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mContext = context;
        initView(context);
    }

    private void initView(Context context)
    {
        context = LayoutInflater.from(context).inflate(0x7f03004a, this);
        tvTime = (TextView)context.findViewById(0x7f0600b3);
        weekdayGridView = (GridView)context.findViewById(0x7f060088);
        histotySportStepView = (HistotySportGraphView)context.findViewById(0x7f06010d);
        histotySportDistanceView = (HistotySportGraphView)context.findViewById(0x7f06010f);
        histotySportCaloriesView = (HistotySportGraphView)context.findViewById(0x7f060111);
        llHistorySportSteps = (LinearLayout)context.findViewById(0x7f06010b);
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
        sportGraphHideView = (SportGraphHideView)context.findViewById(0x7f060113);
        tvMon = (TextView)context.findViewById(0x7f060115);
        tvTues = (TextView)context.findViewById(0x7f060118);
        tvWen = (TextView)context.findViewById(0x7f06011b);
        tvThus = (TextView)context.findViewById(0x7f06011e);
        tvFri = (TextView)context.findViewById(0x7f060121);
        tvSat = (TextView)context.findViewById(0x7f060124);
        tvSun = (TextView)context.findViewById(0x7f060127);
        tvDistancesUint = (TextView)context.findViewById(0x7f060136);
        tvMonUnit = (TextView)context.findViewById(0x7f060116);
        tvTuesUnit = (TextView)context.findViewById(0x7f060119);
        tvWenUnit = (TextView)context.findViewById(0x7f06011c);
        tvThusUnit = (TextView)context.findViewById(0x7f06011f);
        tvFriUnit = (TextView)context.findViewById(0x7f060122);
        tvSatUnit = (TextView)context.findViewById(0x7f060125);
        tvSunUnit = (TextView)context.findViewById(0x7f060128);
        tvStepAccount = (TextView)context.findViewById(0x7f060133);
        tvDistanceAccount = (TextView)context.findViewById(0x7f060135);
        tvKclaAccount = (TextView)context.findViewById(0x7f060138);
        if (((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(0))).intValue() == 0)
        {
            tvDistancesUint.setText(mContext.getString(0x7f0c00b0));
            return;
        } else
        {
            tvDistancesUint.setText(mContext.getString(0x7f0c00b1));
            return;
        }
    }

    public HistotySportGraphView getHistotySportCaloriesView()
    {
        return histotySportCaloriesView;
    }

    public HistotySportGraphView getHistotySportDistanceView()
    {
        return histotySportDistanceView;
    }

    public HistotySportGraphView getHistotySportStepView()
    {
        return histotySportStepView;
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

    public SportGraphHideView getSportGraphHideView()
    {
        return sportGraphHideView;
    }

    public TextView getTvDistanceAccount()
    {
        return tvDistanceAccount;
    }

    public TextView getTvFri()
    {
        return tvFri;
    }

    public TextView getTvFriUnit()
    {
        return tvFriUnit;
    }

    public TextView getTvKclaAccount()
    {
        return tvKclaAccount;
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

    public TextView getTvStepAccount()
    {
        return tvStepAccount;
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

    public Context getmContext()
    {
        return mContext;
    }

    public void setHistotySportCaloriesView(HistotySportGraphView histotysportgraphview)
    {
        histotySportCaloriesView = histotysportgraphview;
    }

    public void setHistotySportDistanceView(HistotySportGraphView histotysportgraphview)
    {
        histotySportDistanceView = histotysportgraphview;
    }

    public void setHistotySportStepView(HistotySportGraphView histotysportgraphview)
    {
        histotySportStepView = histotysportgraphview;
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

    public void setSportGraphHideView(SportGraphHideView sportgraphhideview)
    {
        sportGraphHideView = sportgraphhideview;
    }

    public void setTvDistanceAccount(TextView textview)
    {
        tvDistanceAccount = textview;
    }

    public void setTvFri(TextView textview)
    {
        tvFri = textview;
    }

    public void setTvFriUnit(TextView textview)
    {
        tvFriUnit = textview;
    }

    public void setTvKclaAccount(TextView textview)
    {
        tvKclaAccount = textview;
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

    public void setTvStepAccount(TextView textview)
    {
        tvStepAccount = textview;
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

    public void setmContext(Context context)
    {
        mContext = context;
    }
}
