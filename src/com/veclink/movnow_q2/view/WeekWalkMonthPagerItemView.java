// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.view:
//            HistotyMonthSportGraphView, HistoryMonthView, SportGraphHideMonthView

public class WeekWalkMonthPagerItemView extends LinearLayout
{

    private HistoryMonthView historyMonthView;
    private HistotyMonthSportGraphView histotyMonthSportGraphViewCalories;
    private HistotyMonthSportGraphView histotyMonthSportGraphViewDistances;
    private HistotyMonthSportGraphView histotyMonthSportGraphViewSteps;
    private LinearLayout llFirstWeek;
    private LinearLayout llFiveWeek;
    private LinearLayout llFourWeek;
    private LinearLayout llHistoryMonth;
    private LinearLayout llHistoryMonthDetail;
    private LinearLayout llHistorySportCalories;
    private LinearLayout llHistorySportDistance;
    private LinearLayout llHistorySportSteps;
    private LinearLayout llSixWeek;
    private LinearLayout llThreeWeek;
    private LinearLayout llTwoWeek;
    private Context mContext;
    private SportGraphHideMonthView sportGraphHideView;
    private TextView tvDistanceAccount;
    private TextView tvDistancesUint;
    private TextView tvFirst;
    private TextView tvFirstUnit;
    private TextView tvFive;
    private TextView tvFiveUnit;
    private TextView tvFour;
    private TextView tvFourUnit;
    private TextView tvKclaAccount;
    private TextView tvMonth;
    private TextView tvSix;
    private TextView tvSixUnit;
    private TextView tvStepAccount;
    private TextView tvThree;
    private TextView tvThreeUnit;
    private TextView tvTwo;
    private TextView tvTwoUnit;

    public WeekWalkMonthPagerItemView(Context context)
    {
        super(context);
        mContext = context;
        initView(context);
    }

    public WeekWalkMonthPagerItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mContext = context;
        initView(context);
    }

    public WeekWalkMonthPagerItemView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mContext = context;
        initView(context);
    }

    private void initView(Context context)
    {
        context = LayoutInflater.from(context).inflate(0x7f030049, this);
        tvMonth = (TextView)context.findViewById(0x7f06012f);
        histotyMonthSportGraphViewSteps = (HistotyMonthSportGraphView)context.findViewById(0x7f06010d);
        histotyMonthSportGraphViewDistances = (HistotyMonthSportGraphView)context.findViewById(0x7f06010f);
        histotyMonthSportGraphViewCalories = (HistotyMonthSportGraphView)context.findViewById(0x7f060111);
        llHistoryMonth = (LinearLayout)context.findViewById(0x7f060130);
        llHistoryMonthDetail = (LinearLayout)context.findViewById(0x7f060139);
        historyMonthView = (HistoryMonthView)context.findViewById(0x7f060131);
        llHistorySportSteps = (LinearLayout)context.findViewById(0x7f060132);
        llHistorySportDistance = (LinearLayout)context.findViewById(0x7f060134);
        llHistorySportCalories = (LinearLayout)context.findViewById(0x7f060137);
        sportGraphHideView = (SportGraphHideMonthView)context.findViewById(0x7f06013a);
        tvDistancesUint = (TextView)context.findViewById(0x7f060136);
        tvStepAccount = (TextView)context.findViewById(0x7f060133);
        tvDistanceAccount = (TextView)context.findViewById(0x7f060135);
        tvKclaAccount = (TextView)context.findViewById(0x7f060138);
        llFirstWeek = (LinearLayout)context.findViewById(0x7f06013b);
        llTwoWeek = (LinearLayout)context.findViewById(0x7f06013e);
        llThreeWeek = (LinearLayout)context.findViewById(0x7f060141);
        llFourWeek = (LinearLayout)context.findViewById(0x7f060144);
        llFiveWeek = (LinearLayout)context.findViewById(0x7f060147);
        llSixWeek = (LinearLayout)context.findViewById(0x7f06014a);
        tvFirst = (TextView)context.findViewById(0x7f06013c);
        tvTwo = (TextView)context.findViewById(0x7f06013f);
        tvThree = (TextView)context.findViewById(0x7f060142);
        tvFour = (TextView)context.findViewById(0x7f060145);
        tvFive = (TextView)context.findViewById(0x7f060148);
        tvSix = (TextView)context.findViewById(0x7f06014b);
        tvFirstUnit = (TextView)context.findViewById(0x7f06013d);
        tvTwoUnit = (TextView)context.findViewById(0x7f060140);
        tvThreeUnit = (TextView)context.findViewById(0x7f060143);
        tvFourUnit = (TextView)context.findViewById(0x7f060146);
        tvFiveUnit = (TextView)context.findViewById(0x7f060149);
        tvSixUnit = (TextView)context.findViewById(0x7f06014c);
    }

    public HistoryMonthView getHistoryMonthView()
    {
        return historyMonthView;
    }

    public HistotyMonthSportGraphView getHistotyMonthSportGraphViewCalories()
    {
        return histotyMonthSportGraphViewCalories;
    }

    public HistotyMonthSportGraphView getHistotyMonthSportGraphViewDistances()
    {
        return histotyMonthSportGraphViewDistances;
    }

    public HistotyMonthSportGraphView getHistotyMonthSportGraphViewSteps()
    {
        return histotyMonthSportGraphViewSteps;
    }

    public LinearLayout getLlFirstWeek()
    {
        return llFirstWeek;
    }

    public LinearLayout getLlFiveWeek()
    {
        return llFiveWeek;
    }

    public LinearLayout getLlFourWeek()
    {
        return llFourWeek;
    }

    public LinearLayout getLlHistoryMonth()
    {
        return llHistoryMonth;
    }

    public LinearLayout getLlHistoryMonthDetail()
    {
        return llHistoryMonthDetail;
    }

    public LinearLayout getLlHistorySportCalories()
    {
        return llHistorySportCalories;
    }

    public LinearLayout getLlHistorySportDistance()
    {
        return llHistorySportDistance;
    }

    public LinearLayout getLlHistorySportSteps()
    {
        return llHistorySportSteps;
    }

    public LinearLayout getLlSixWeek()
    {
        return llSixWeek;
    }

    public LinearLayout getLlThreeWeek()
    {
        return llThreeWeek;
    }

    public LinearLayout getLlTwoWeek()
    {
        return llTwoWeek;
    }

    public SportGraphHideMonthView getSportGraphHideView()
    {
        return sportGraphHideView;
    }

    public TextView getTvDistanceAccount()
    {
        return tvDistanceAccount;
    }

    public TextView getTvDistancesUint()
    {
        return tvDistancesUint;
    }

    public TextView getTvFirst()
    {
        return tvFirst;
    }

    public TextView getTvFirstUnit()
    {
        return tvFirstUnit;
    }

    public TextView getTvFive()
    {
        return tvFive;
    }

    public TextView getTvFiveUnit()
    {
        return tvFiveUnit;
    }

    public TextView getTvFour()
    {
        return tvFour;
    }

    public TextView getTvFourUnit()
    {
        return tvFourUnit;
    }

    public TextView getTvKclaAccount()
    {
        return tvKclaAccount;
    }

    public TextView getTvMonth()
    {
        return tvMonth;
    }

    public TextView getTvSix()
    {
        return tvSix;
    }

    public TextView getTvSixUnit()
    {
        return tvSixUnit;
    }

    public TextView getTvStepAccount()
    {
        return tvStepAccount;
    }

    public TextView getTvThree()
    {
        return tvThree;
    }

    public TextView getTvThreeUnit()
    {
        return tvThreeUnit;
    }

    public TextView getTvTwo()
    {
        return tvTwo;
    }

    public TextView getTvTwoUnit()
    {
        return tvTwoUnit;
    }

    public Context getmContext()
    {
        return mContext;
    }

    public void setHistoryMonthView(HistoryMonthView historymonthview)
    {
        historyMonthView = historymonthview;
    }

    public void setHistotyMonthSportGraphViewCalories(HistotyMonthSportGraphView histotymonthsportgraphview)
    {
        histotyMonthSportGraphViewCalories = histotymonthsportgraphview;
    }

    public void setHistotyMonthSportGraphViewDistances(HistotyMonthSportGraphView histotymonthsportgraphview)
    {
        histotyMonthSportGraphViewDistances = histotymonthsportgraphview;
    }

    public void setHistotyMonthSportGraphViewSteps(HistotyMonthSportGraphView histotymonthsportgraphview)
    {
        histotyMonthSportGraphViewSteps = histotymonthsportgraphview;
    }

    public void setLlFirstWeek(LinearLayout linearlayout)
    {
        llFirstWeek = linearlayout;
    }

    public void setLlFiveWeek(LinearLayout linearlayout)
    {
        llFiveWeek = linearlayout;
    }

    public void setLlFourWeek(LinearLayout linearlayout)
    {
        llFourWeek = linearlayout;
    }

    public void setLlHistoryMonth(LinearLayout linearlayout)
    {
        llHistoryMonth = linearlayout;
    }

    public void setLlHistoryMonthDetail(LinearLayout linearlayout)
    {
        llHistoryMonthDetail = linearlayout;
    }

    public void setLlHistorySportCalories(LinearLayout linearlayout)
    {
        llHistorySportCalories = linearlayout;
    }

    public void setLlHistorySportDistance(LinearLayout linearlayout)
    {
        llHistorySportDistance = linearlayout;
    }

    public void setLlHistorySportSteps(LinearLayout linearlayout)
    {
        llHistorySportSteps = linearlayout;
    }

    public void setLlSixWeek(LinearLayout linearlayout)
    {
        llSixWeek = linearlayout;
    }

    public void setLlThreeWeek(LinearLayout linearlayout)
    {
        llThreeWeek = linearlayout;
    }

    public void setLlTwoWeek(LinearLayout linearlayout)
    {
        llTwoWeek = linearlayout;
    }

    public void setSportGraphHideView(SportGraphHideMonthView sportgraphhidemonthview)
    {
        sportGraphHideView = sportgraphhidemonthview;
    }

    public void setTvDistanceAccount(TextView textview)
    {
        tvDistanceAccount = textview;
    }

    public void setTvDistancesUint(TextView textview)
    {
        tvDistancesUint = textview;
    }

    public void setTvFirst(TextView textview)
    {
        tvFirst = textview;
    }

    public void setTvFirstUnit(TextView textview)
    {
        tvFirstUnit = textview;
    }

    public void setTvFive(TextView textview)
    {
        tvFive = textview;
    }

    public void setTvFiveUnit(TextView textview)
    {
        tvFiveUnit = textview;
    }

    public void setTvFour(TextView textview)
    {
        tvFour = textview;
    }

    public void setTvFourUnit(TextView textview)
    {
        tvFourUnit = textview;
    }

    public void setTvKclaAccount(TextView textview)
    {
        tvKclaAccount = textview;
    }

    public void setTvMonth(TextView textview)
    {
        tvMonth = textview;
    }

    public void setTvSix(TextView textview)
    {
        tvSix = textview;
    }

    public void setTvSixUnit(TextView textview)
    {
        tvSixUnit = textview;
    }

    public void setTvStepAccount(TextView textview)
    {
        tvStepAccount = textview;
    }

    public void setTvThree(TextView textview)
    {
        tvThree = textview;
    }

    public void setTvThreeUnit(TextView textview)
    {
        tvThreeUnit = textview;
    }

    public void setTvTwo(TextView textview)
    {
        tvTwo = textview;
    }

    public void setTvTwoUnit(TextView textview)
    {
        tvTwoUnit = textview;
    }

    public void setmContext(Context context)
    {
        mContext = context;
    }
}
