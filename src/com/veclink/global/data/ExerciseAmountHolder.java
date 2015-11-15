// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.global.data;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.entity.ExerciseAmount;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.movnow_q2.util.StringUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ExerciseAmountHolder
{
    private final class ThreadHandler extends Handler
    {

        final ExerciseAmountHolder this$0;

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            case 0: // '\0'
            default:
                return;
            }
        }

        public ThreadHandler(Looper looper)
        {
            this$0 = ExerciseAmountHolder.this;
            super(looper);
        }
    }


    private static final String HandleThreadName = "ExerciseAmountHolderThread";
    private static final int Handler_init_data = 0;
    private static Context mContext;
    private static ExerciseAmountHolder mExerciseAmountHolder;
    public static List mUptakeCalorieList = null;
    public HashMap mDayExerciseAmountHash;
    public List mExerciseAmountList;
    private volatile ThreadHandler mHandler;
    public HashMap mMonthExerciseAmountHash;
    public List mSleepQualityList;
    private volatile Looper mThreadLooper;

    public ExerciseAmountHolder()
    {
        mThreadLooper = null;
        mHandler = null;
        mExerciseAmountList = null;
        mSleepQualityList = null;
        mDayExerciseAmountHash = new HashMap();
        mMonthExerciseAmountHash = new HashMap();
        HandlerThread handlerthread = new HandlerThread("ExerciseAmountHolderThread", 10);
        handlerthread.start();
        mThreadLooper = handlerthread.getLooper();
        mHandler = new ThreadHandler(mThreadLooper);
    }

    private void Initial(Context context)
    {
        mContext = context;
        mHandler.obtainMessage(0).sendToTarget();
    }

    public static void deInit()
    {
        if (mExerciseAmountHolder == null)
        {
            return;
        } else
        {
            mExerciseAmountHolder.Release();
            mExerciseAmountHolder = null;
            return;
        }
    }

    public static ExerciseAmountHolder getInstance()
    {
        if (mExerciseAmountHolder == null)
        {
            mExerciseAmountHolder = new ExerciseAmountHolder();
        }
        return mExerciseAmountHolder;
    }

    public static void init(Context context)
    {
        context = context.getApplicationContext();
        getInstance().Initial(context);
    }

    private void initDayExerciseAmountData()
    {
        String s = null;
        int k = 0;
        int j = 0;
        int i = 0;
        int l = 0;
        Iterator iterator = mExerciseAmountList.iterator();
        while (iterator.hasNext()) 
        {
            ExerciseAmount exerciseamount = (ExerciseAmount)iterator.next();
            if (s == null)
            {
                k = exerciseamount.getStepNumber();
                j = exerciseamount.getMileage();
                i = exerciseamount.getCalorieConsume();
                s = exerciseamount.getDateTime().substring(0, 8);
            } else
            if (exerciseamount.getDateTime().substring(0, 8).equals(s))
            {
                k += exerciseamount.getStepNumber();
                j = k + exerciseamount.getMileage();
                i = k + exerciseamount.getCalorieConsume();
            } else
            {
                ExerciseAmount exerciseamount1 = new ExerciseAmount();
                exerciseamount1.setStepNumber(k);
                exerciseamount1.setMileage(j);
                exerciseamount1.setCalorieConsume(i);
                mDayExerciseAmountHash.put(s, exerciseamount1);
                k = exerciseamount.getStepNumber();
                j = exerciseamount.getMileage();
                i = exerciseamount.getCalorieConsume();
                s = exerciseamount.getDateTime().substring(0, 8);
            }
            if (l == mExerciseAmountList.size() - 1)
            {
                exerciseamount = new ExerciseAmount();
                exerciseamount.setStepNumber(k);
                exerciseamount.setMileage(j);
                exerciseamount.setCalorieConsume(i);
                mDayExerciseAmountHash.put(s, exerciseamount);
            }
            l++;
        }
    }

    private void initMonthExerciseAmountData()
    {
        String s = null;
        int k = 0;
        int j = 0;
        int i = 0;
        int l = 0;
        Iterator iterator = mExerciseAmountList.iterator();
        while (iterator.hasNext()) 
        {
            ExerciseAmount exerciseamount = (ExerciseAmount)iterator.next();
            if (s == null)
            {
                k = exerciseamount.getStepNumber();
                j = exerciseamount.getMileage();
                i = exerciseamount.getCalorieConsume();
                s = exerciseamount.getDateTime().substring(0, 6);
            } else
            if (exerciseamount.getDateTime().substring(0, 6).equals(s))
            {
                k += exerciseamount.getStepNumber();
                j = k + exerciseamount.getMileage();
                i = k + exerciseamount.getCalorieConsume();
            } else
            {
                ExerciseAmount exerciseamount1 = new ExerciseAmount();
                exerciseamount1.setStepNumber(k);
                exerciseamount1.setMileage(j);
                exerciseamount1.setCalorieConsume(i);
                mMonthExerciseAmountHash.put(s, exerciseamount1);
                k = exerciseamount.getStepNumber();
                j = exerciseamount.getMileage();
                i = exerciseamount.getCalorieConsume();
                s = exerciseamount.getDateTime().substring(0, 6);
            }
            if (l == mExerciseAmountList.size() - 1)
            {
                exerciseamount = new ExerciseAmount();
                exerciseamount.setStepNumber(k);
                exerciseamount.setMileage(j);
                exerciseamount.setCalorieConsume(i);
                mMonthExerciseAmountHash.put(s, exerciseamount);
            }
            l++;
        }
    }

    public static String initUptakeCalorieData()
    {
        String s = HealthyAccountHolder.getUserId(mContext);
        mUptakeCalorieList = HealthyDBOperate.loadUptakeCalorieByDay(mContext, StringUtil.formatCurrDate("yyyyMMdd"), s);
        float f1 = 0.0F;
        float f = 0.0F;
        if (mUptakeCalorieList != null)
        {
            int i = 0;
            do
            {
                f1 = f;
                if (i >= mUptakeCalorieList.size())
                {
                    break;
                }
                int j = ((UptakeCalorie)mUptakeCalorieList.get(i)).getCalorieContent();
                f1 = ((UptakeCalorie)mUptakeCalorieList.get(i)).getCounts();
                f += (float)j * f1;
                i++;
            } while (true);
        }
        if (f1 == 0.0F)
        {
            return "0";
        } else
        {
            return String.valueOf(f1);
        }
    }

    public void Release()
    {
    }

    public void delUptakeCalorieData(int i, UptakeCalorie uptakecalorie)
    {
        if (mUptakeCalorieList != null)
        {
            mUptakeCalorieList.remove(i);
            HealthyDBOperate.delUptakeCalorie(mContext, uptakecalorie);
        }
    }

    public ExerciseAmount getExerciseAmountByDay(String s)
    {
        ExerciseAmount exerciseamount = null;
        if (mDayExerciseAmountHash != null)
        {
            exerciseamount = (ExerciseAmount)mDayExerciseAmountHash.get(s);
        }
        return exerciseamount;
    }

    public ExerciseAmount getExerciseAmountByMonth(String s)
    {
        ExerciseAmount exerciseamount = null;
        if (mMonthExerciseAmountHash != null)
        {
            exerciseamount = (ExerciseAmount)mMonthExerciseAmountHash.get(s);
        }
        return exerciseamount;
    }

    public void initExerciseAmountData()
    {
        mExerciseAmountList = HealthyDBOperate.loadAllExerciseAmount(mContext);
        if (mExerciseAmountList != null)
        {
            initMonthExerciseAmountData();
            initDayExerciseAmountData();
        }
    }

    public void insertUptakeCalorieData(UptakeCalorie uptakecalorie)
    {
        if (mUptakeCalorieList == null)
        {
            mUptakeCalorieList = new ArrayList();
        }
        mUptakeCalorieList.add(uptakecalorie);
        HealthyDBOperate.addUptakeCalorie(mContext, uptakecalorie);
    }

    public void updateUptakeCalorieData(UptakeCalorie uptakecalorie)
    {
        HealthyDBOperate.updateUptakeCalorie(mContext, uptakecalorie);
    }

}
