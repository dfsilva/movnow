// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.app.Activity;
import java.util.Stack;

public class MyActivityManager
{

    private static Stack activityStack;
    private static MyActivityManager instance;

    private MyActivityManager()
    {
    }

    public static MyActivityManager getScreenManager()
    {
        if (instance == null)
        {
            instance = new MyActivityManager();
        }
        return instance;
    }

    public Activity currentActivity()
    {
        Activity activity = null;
        if (!activityStack.empty())
        {
            activity = (Activity)activityStack.lastElement();
        }
        return activity;
    }

    public void popActivity(Activity activity)
    {
        if (activity != null)
        {
            activity.finish();
            activityStack.remove(activity);
        }
    }

    public void popAllActivityExceptOne(Class class1)
    {
        do
        {
            Activity activity;
            for (activity = currentActivity(); activity == null || activity.getClass().equals(class1);)
            {
                return;
            }

            popActivity(activity);
        } while (true);
    }

    public void pushActivity(Activity activity)
    {
        if (activityStack == null)
        {
            activityStack = new Stack();
        }
        activityStack.add(activity);
    }
}
